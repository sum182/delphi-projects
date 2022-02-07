unit RC6Enc;

interface

uses Sysutils, Classes;

const
  NUMROUNDS= 20;

type
  TRC6Data= record
    IV, LB: array[0..15] of byte;
    KeyData: array[0..((NUMROUNDS*2)+3)] of LongWord;
  end;

  EWrongPassword = class(Exception);
  EInvalidFile = class(Exception);

function B64Encode(const S: String): String;
function B64Decode(const S: String): String;

function Decrypt(S, Key : String) : String;
function Encrypt(S, Key : String) : String;

procedure EncryptStream(Stream: TStream; Key: String);
procedure DecryptStream(Stream: TStream; Key: String);

function HasEncHeader(Stream: TStream): Boolean;

procedure EncodeStream(Stream: TStream);
procedure DecodeStream(Stream: TStream);

function LRot16(X: Word; c: longint): Word;
function RRot16(X: Word; c: longint): Word;
function LRot32(X: LongWord; c: longint): LongWord;
function RRot32(X: LongWord; c: longint): LongWord;
function SwapDWord(X: LongWord): LongWord;
procedure XorBlock(I1, I2, O1: PByteArray; Len: longint);

procedure RC6Init(var Data: TRC6Data; var Key; Size: longint; IVector: pointer);
procedure RC6Reset(var Data: TRC6Data);
procedure RC6Burn(var Data:  TRC6Data);
procedure RC6EncryptECB(var Data: TRC6Data; const InBlock; var OutBlock);
procedure RC6DecryptECB(var Data: TRC6Data; const InBlock; var OutBlock);
procedure RC6EncryptCBC(var Data: TRC6Data; const InData; var OutData; Size: longint);
procedure RC6DecryptCBC(var Data: TRC6Data; const InData; var OutData; Size: longint);
procedure RC6EncryptCFB(var Data: TRC6Data; const InData; var OutData; Size: longint);
procedure RC6DecryptCFB(var Data: TRC6Data; const InData; var OutData; Size: longint);

implementation

const
  B64Table= 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
  CodePage= 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/-_''~`{}[]<>,./?|!@#$%*()Á«·¡‡¿';

  sBox: array[0..51] of LongWord= (
    $B7E15163,$5618CB1C,$F45044D5,$9287BE8E,$30BF3847,$CEF6B200,
    $6D2E2BB9,$0B65A572,$A99D1F2B,$47D498E4,$E60C129D,$84438C56,
    $227B060F,$C0B27FC8,$5EE9F981,$FD21733A,$9B58ECF3,$399066AC,
    $D7C7E065,$75FF5A1E,$1436D3D7,$B26E4D90,$50A5C749,$EEDD4102,
    $8D14BABB,$2B4C3474,$C983AE2D,$67BB27E6,$05F2A19F,$A42A1B58,
    $42619511,$E0990ECA,$7ED08883,$1D08023C,$BB3F7BF5,$5976F5AE,
    $F7AE6F67,$95E5E920,$341D62D9,$D254DC92,$708C564B,$0EC3D004,
    $ACFB49BD,$4B32C376,$E96A3D2F,$87A1B6E8,$25D930A1,$C410AA5A,
    $62482413,$007F9DCC,$9EB71785,$3CEE913E);

function B64Encode;
var
  i: integer;
  InBuf: array[0..2] of byte;
  OutBuf: array[0..3] of char;
begin
  SetLength(Result,((Length(S)+2) div 3)*4);
  for i:= 1 to ((Length(S)+2) div 3) do
  begin
    if Length(S)< (i*3) then
      Move(S[(i-1)*3+1],InBuf,Length(S)-(i-1)*3)
    else
      Move(S[(i-1)*3+1],InBuf,3);
    OutBuf[0]:= B64Table[((InBuf[0] and $FC) shr 2) + 1];
    OutBuf[1]:= B64Table[(((InBuf[0] and $03) shl 4) or ((InBuf[1] and $F0) shr 4)) + 1];
    OutBuf[2]:= B64Table[(((InBuf[1] and $0F) shl 2) or ((InBuf[2] and $C0) shr 6)) + 1];
    OutBuf[3]:= B64Table[(InBuf[2] and $3F) + 1];
    Move(OutBuf,Result[(i-1)*4+1],4);
  end;
  if (Length(S) mod 3)= 1 then
  begin
    Result[Length(Result)-1]:= '=';
    Result[Length(Result)]:= '=';
  end
  else if (Length(S) mod 3)= 2 then
    Result[Length(Result)]:= '=';
end;

function B64Decode;
var
  i: integer;
  InBuf: array[0..3] of byte;
  OutBuf: array[0..2] of byte;
begin
  if (Length(S) mod 4) <> 0 then
  begin
    raise Exception.Create('Base64: Incorrect string format');
    Exit;
  end;
  {$WARNINGS OFF}
  SetLength(Result,((Length(S) div 4)-1)*3);
  for i:= 1 to ((Length(S) div 4)-1) do
  begin
    Move(S[(i-1)*4+1],InBuf,4);
    if (InBuf[0]> 64) and (InBuf[0]< 91) then
      Dec(InBuf[0],65)
    else if (InBuf[0] > 96) and (InBuf[0]< 123) then
      Dec(InBuf[0],71)
    else if (InBuf[0] > 47) and (InBuf[0]< 58) then
      Inc(InBuf[0],4)
    else if InBuf[0] = 43 then
      InBuf[0]:= 62
    else
      InBuf[0]:= 63;
    if (InBuf[1]> 64) and (InBuf[1]< 91) then
      Dec(InBuf[1],65)
    else if (InBuf[1]> 96) and (InBuf[1]< 123) then
      Dec(InBuf[1],71)
    else if (InBuf[1]> 47) and (InBuf[1]< 58) then
      Inc(InBuf[1],4)
    else if InBuf[1]= 43 then
      InBuf[1]:= 62
    else
      InBuf[1]:= 63;
    if (InBuf[2]> 64) and (InBuf[2]< 91) then
      Dec(InBuf[2],65)
    else if (InBuf[2]> 96) and (InBuf[2]< 123) then
      Dec(InBuf[2],71)
    else if (InBuf[2]> 47) and (InBuf[2]< 58) then
      Inc(InBuf[2],4)
    else if InBuf[2]= 43 then
      InBuf[2]:= 62
    else
      InBuf[2]:= 63;
    if (InBuf[3]> 64) and (InBuf[3]< 91) then
      Dec(InBuf[3],65)
    else if (InBuf[3]> 96) and (InBuf[3]< 123) then
      Dec(InBuf[3],71)
    else if (InBuf[3]> 47) and (InBuf[3]< 58) then
      Inc(InBuf[3],4)
    else if InBuf[3]= 43 then
      InBuf[3]:= 62
    else
      InBuf[3]:= 63;
    OutBuf[0]:= (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $03);
    OutBuf[1]:= (InBuf[1] shl 4) or ((InBuf[2] shr 2) and $0F);
    OutBuf[2]:= (InBuf[2] shl 6) or (InBuf[3] and $3F);
    Move(OutBuf,Result[(i-1)*3+1],3);
  end;
  if Length(S)<> 0 then
  begin
    Move(S[Length(S)-3],InBuf,4);
    if InBuf[2]= 61 then
    begin
      if (InBuf[0]> 64) and (InBuf[0]< 91) then
        Dec(InBuf[0],65)
      else if (InBuf[0]> 96) and (InBuf[0]< 123) then
        Dec(InBuf[0],71)
      else if (InBuf[0]> 47) and (InBuf[0]< 58) then
        Inc(InBuf[0],4)
      else if InBuf[0]= 43 then
        InBuf[0]:= 62
      else
        InBuf[0]:= 63;
      if (InBuf[1]> 64) and (InBuf[1]< 91) then
        Dec(InBuf[1],65)
      else if (InBuf[1]> 96) and (InBuf[1]< 123) then
        Dec(InBuf[1],71)
      else if (InBuf[1]> 47) and (InBuf[1]< 58) then
        Inc(InBuf[1],4)
      else if InBuf[1]= 43 then
        InBuf[1]:= 62
      else
        InBuf[1]:= 63;
      OutBuf[0]:= (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $03);
      Result:= Result + char(OutBuf[0]);
    end
    else if InBuf[3]= 61 then
    begin
      if (InBuf[0]> 64) and (InBuf[0]< 91) then
        Dec(InBuf[0],65)
      else if (InBuf[0]> 96) and (InBuf[0]< 123) then
        Dec(InBuf[0],71)
      else if (InBuf[0]> 47) and (InBuf[0]< 58) then
        Inc(InBuf[0],4)
      else if InBuf[0]= 43 then
        InBuf[0]:= 62
      else
        InBuf[0]:= 63;
      if (InBuf[1]> 64) and (InBuf[1]< 91) then
        Dec(InBuf[1],65)
      else if (InBuf[1]> 96) and (InBuf[1]< 123) then
        Dec(InBuf[1],71)
      else if (InBuf[1]> 47) and (InBuf[1]< 58) then
        Inc(InBuf[1],4)
      else if InBuf[1]= 43 then
        InBuf[1]:= 62
      else
        InBuf[1]:= 63;
      if (InBuf[2]> 64) and (InBuf[2]< 91) then
        Dec(InBuf[2],65)
      else if (InBuf[2]> 96) and (InBuf[2]< 123) then
        Dec(InBuf[2],71)
      else if (InBuf[2]> 47) and (InBuf[2]< 58) then
        Inc(InBuf[2],4)
      else if InBuf[2]= 43 then
        InBuf[2]:= 62
      else
        InBuf[2]:= 63;
      OutBuf[0]:= (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $03);
      OutBuf[1]:= (InBuf[1] shl 4) or ((InBuf[2] shr 2) and $0F);
      Result:= Result + char(OutBuf[0]) + char(OutBuf[1]);
    end
    else
    begin
      if (InBuf[0]> 64) and (InBuf[0]< 91) then
        Dec(InBuf[0],65)
      else if (InBuf[0]> 96) and (InBuf[0]< 123) then
        Dec(InBuf[0],71)
      else if (InBuf[0]> 47) and (InBuf[0]< 58) then
        Inc(InBuf[0],4)
      else if InBuf[0]= 43 then
        InBuf[0]:= 62
      else
        InBuf[0]:= 63;
      if (InBuf[1]> 64) and (InBuf[1]< 91) then
        Dec(InBuf[1],65)
      else if (InBuf[1]> 96) and (InBuf[1]< 123) then
        Dec(InBuf[1],71)
      else if (InBuf[1]> 47) and (InBuf[1]< 58) then
        Inc(InBuf[1],4)
      else if InBuf[1]= 43 then
        InBuf[1]:= 62
      else
        InBuf[1]:= 63;
      if (InBuf[2]> 64) and (InBuf[2]< 91) then
        Dec(InBuf[2],65)
      else if (InBuf[2]> 96) and (InBuf[2]< 123) then
        Dec(InBuf[2],71)
      else if (InBuf[2]> 47) and (InBuf[2]< 58) then
        Inc(InBuf[2],4)
      else if InBuf[2]= 43 then
        InBuf[2]:= 62
      else
        InBuf[2]:= 63;
      if (InBuf[3]> 64) and (InBuf[3]< 91) then
        Dec(InBuf[3],65)
      else if (InBuf[3]> 96) and (InBuf[3]< 123) then
        Dec(InBuf[3],71)
      else if (InBuf[3]> 47) and (InBuf[3]< 58) then
        Inc(InBuf[3],4)
      else if InBuf[3]= 43 then
        InBuf[3]:= 62
      else
        InBuf[3]:= 63;
      OutBuf[0]:= (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $03);
      OutBuf[1]:= (InBuf[1] shl 4) or ((InBuf[2] shr 2) and $0F);
      OutBuf[2]:= (InBuf[2] shl 6) or (InBuf[3] and $3F);
      Result:= Result + Char(OutBuf[0]) + Char(OutBuf[1]) + Char(OutBuf[2]);
    end;
  end;
end;

procedure EncodeStream(Stream: TStream);
Const
  MaxBufSize = $B400;
Var
  BufSize, N, Size: LongWord;
  InBuff, OutBuff: String;
  Tmp: TStream;
Begin
  Size := Stream.Size;
  Tmp := TMemoryStream.Create;
  Stream.Position := 0;

  If Size > MaxBufSize Then
    BufSize := MaxBufSize
  Else
    BufSize := Size;

  SetLength(InBuff, BufSize);
  while Size <> 0 do
  Begin
    If Size > BufSize Then
      N := BufSize
    Else
      N := Size;

    Stream.ReadBuffer(InBuff[1], N);
    OutBuff := B64Encode(Copy(InBuff,1,N));
    Tmp.WriteBuffer(OutBuff[1], Length(OutBuff));
    Dec(Size, N);
  End;
  Stream.Size := 0;
  Stream.CopyFrom(Tmp, 0);
  Tmp.Free;
End;

procedure DecodeStream(Stream: TStream);
Const
  MaxBufSize = $F000;
Var
  BufSize, N, Size: LongWord;
  InBuff, OutBuff: String;
  Tmp: TStream;
Begin
  Size := Stream.Size;
  Tmp := TMemoryStream.Create;
  Stream.Position := 0;

  If Size > MaxBufSize Then
    BufSize := MaxBufSize
  Else
    BufSize := Size;

  SetLength(InBuff, BufSize);
  while Size <> 0 do
  Begin
    If Size > BufSize Then
      N := BufSize
    Else
      N := Size;

    Stream.ReadBuffer(InBuff[1], N);
    OutBuff := B64Decode(Copy(InBuff,1, N));
    Tmp.WriteBuffer(OutBuff[1], Length(OutBuff));
    Dec(Size, N);
  End;
  Stream.Size := 0;
  Stream.CopyFrom(Tmp, 0);
  Tmp.Free;
End;


function Encrypt(S, Key : String) : String;
Var
  i: Integer;
  RC6Data: TRC6Data;
begin
  i := Length(S);
  If i < 8 Then
  begin
    SetLength(S, 8);
    FillChar(s[i + 1], 8 - i, #32);
  end;

  SetLength(Result, Length(S));
  RC6Init(RC6Data, Key[1], Length(Key) * 8, nil);
  RC6EncryptCFB(RC6Data, S[1], Result[1], Length(S));
  RC6Burn(RC6Data);

  Result := B64Encode(Result);
end;

function Decrypt(S, Key : String) : String;
Var
  RC6Data: TRC6Data;
begin
  S := B64Decode(S);

  SetLength(Result, Length(S));
  RC6Init(RC6Data, Key[1], Length(Key) * 8, nil);
  RC6DecryptCFB(RC6Data, S[1], Result[1], Length(S));
  RC6Burn(RC6Data);

  Result := Trim(Result);
end;

procedure EncryptStream(Stream: TStream; Key: String);
Const
  MaxBufSize = $F000;
  Header = '0000ENC';
Var
  RC6Data : TRC6Data;
  BufSize, N, iSize: LongWord;
  Buffer:  Array[1..MaxBufSize] of Char;
  vKey: Array[1..50] of Char;
  Tmp: TStream;
Begin
  If Stream.Size = 0 Then Exit;

  iSize := Stream.Size;
  Stream.Position := 0;

  FillChar(vKey, 50, 0);
  N := Length(Key);
  If N > 50 Then N := 50;
  Move(Key[1], vKey, N);
  RC6Init(RC6Data, vKey, SizeOf(vKey) * 8, nil);
  RC6EncryptCFB(RC6Data, vKey, vKey, 50);

  Tmp := TMemoryStream.Create;
  Tmp.Write(Header,Length(Header));                                   // Flag q mostra q o arquivo esta encriptado
  Tmp.Write(vKey, 50);

  If iSize > MaxBufSize Then
    BufSize := MaxBufSize
  Else
    BufSize := iSize;

  while iSize <> 0 do
  Begin
    If iSize > BufSize Then
      N := BufSize
    Else
      N := iSize;

    Stream.ReadBuffer(Buffer[1], N);
    RC6EncryptCFB(RC6Data, Buffer[1],Buffer[1],N);
    Tmp.WriteBuffer(Buffer[1], N);
    Dec(iSize, N);
  End;

  RC6Burn(RC6Data);
  Stream.Size := 0;
  Stream.CopyFrom(Tmp, 0);
  Tmp.Free;
End;

function HasEncHeader(Stream: TStream): Boolean;
Const
  Header = '0000ENC';
Var
  Buffer: Array[1..Length(Header)] of Char;
  C: Byte;
begin
  C := 1;

  Result := True;

  Stream.Read(Buffer[1], Length(Header));

  While Result And (C <= 7) do
  Begin
    Result := Buffer[c] = Header[c];
    Inc(c);
  End;
end;

procedure DecryptStream(Stream: TStream; Key: String);
Const
  MaxBufSize = $F000;
  Header = '0000ENC';
Var
  RC6Data : TRC6Data;
  C: Byte;
  BufSize, N, iSize: LongWord;
  Buffer:  Array[1..MaxBufSize] of Char;
  vKey: Array[1..50] of Char;
  Tmp: TStream;
  bOk: Boolean;
Begin
  If Stream.Size = 0 Then Exit;

  iSize := Stream.Size;
  Stream.Position := 0;

  FillChar(vKey, 50, 0);
  N := Length(Key);
  If N > 50 Then N := 50;
  Move(Key[1], vKey, N);
  RC6Init(RC6Data, vKey, SizeOf(vKey) * 8, nil);
  RC6EncryptCFB(RC6Data, vKey[1], vKey[1], 50);

  bOk := HasEncHeader(Stream);
  If Not bOk Then
  {$IFDEF MAXSECURITY}
    Raise EInvalidFile.Create('Arquivo Inv·lido');
  {$ELSE}
    Exit;
  {$ENDIF}

  Stream.Read(Buffer[1], 50);

  c := 1;
  While bOk And (C <= 50) do
  Begin
    bOk := Buffer[c] = vKey[c];
    Inc(c);
  End;

  If Not bOk Then
  begin
    raise EWrongPassword.Create('Senha Inv·lida');
    exit;
  end;

  Tmp := TMemoryStream.Create;
  Dec(iSize, 57);

  If iSize > MaxBufSize Then
    BufSize := MaxBufSize
  Else
    BufSize := iSize;

  while iSize <> 0 do
  Begin
    If iSize > BufSize Then
      N := BufSize
    Else
      N := iSize;

    Stream.ReadBuffer(Buffer[1], N);
    RC6DecryptCFB(RC6Data, Buffer[1],Buffer[1],N);
    Tmp.WriteBuffer(Buffer[1], N);
    Dec(iSize, N);
  End;

  RC6Burn(RC6Data);
  Stream.Size := 0;
  Stream.CopyFrom(Tmp, 0);
  Tmp.Free;
end;

function LRot16(X: Word; c: longint): Word;
asm
  mov ecx,&c
  mov ax,&X
  rol ax,cl
  mov &Result,ax
end;

function RRot16(X: Word; c: longint): Word;
asm
  mov ecx,&c
  mov ax,&X
  ror ax,cl
  mov &Result,ax
end;

function LRot32(X: LongWord; c: longint): LongWord; register;
asm
  mov ecx, edx
  rol eax, cl
end;

function RRot32(X: LongWord; c: longint): LongWord; register;
asm
  mov ecx, edx
  ror eax, cl
end;

function SwapDWord(X: LongWord): LongWord; register;
asm
  xchg al,ah
  rol  eax,16
  xchg al,ah
end;

procedure XorBlock(I1, I2, O1: PByteArray; Len: longint);
var
  i: longint;
begin
  for i:= 0 to Len-1 do
    O1^[i]:= I1^[i] xor I2^[i];
end;

procedure RC6EncryptECB;
var
  x: array[0..3] of LongWord;
  u, t: LongWord;
  i: longint;
begin
  with data do
  begin
    Move(InBlock,x,Sizeof(x));
    x[1]:= x[1] + KeyData[0];
    x[3]:= x[3] + KeyData[1];
    for i:= 1 to NUMROUNDS do
    begin
      t:= Lrot32(x[1] * (2*x[1] + 1),5);
      u:= Lrot32(x[3] * (2*x[3] + 1),5);
      x[0]:= Lrot32(x[0] xor t,u) + KeyData[2*i];
      x[2]:= Lrot32(x[2] xor u,t) + KeyData[2*i+1];
      t:= x[0]; x[0]:= x[1]; x[1]:= x[2]; x[2]:= x[3]; x[3]:= t;
    end;
    x[0]:= x[0] + KeyData[(2*NUMROUNDS)+2];
    x[2]:= x[2] + KeyData[(2*NUMROUNDS)+3];
    Move(x,OutBlock,Sizeof(x));
  end;
end;

procedure RC6DecryptECB;
var
  x: array[0..3] of LongWord;
  u, t: LongWord;
  i: longint;
begin
  with Data do
  Begin
    Move(InBlock,x,Sizeof(x));
    x[2]:= x[2] - KeyData[(2*NUMROUNDS)+3];
    x[0]:= x[0] - KeyData[(2*NUMROUNDS)+2];
    for i:= NUMROUNDS downto 1 do
    begin
      t:= x[0]; x[0]:= x[3]; x[3]:= x[2]; x[2]:= x[1]; x[1]:= t;
      u:= Lrot32(x[3] * (2*x[3] + 1),5);
      t:= Lrot32(x[1] * (2*x[1] + 1),5);
      x[2]:= Rrot32(x[2] - KeyData[2*i+1],t) xor u;
      x[0]:= Rrot32(x[0] - KeyData[2*i],u) xor t;
    end;
    x[3]:= x[3] - KeyData[1];
    x[1]:= x[1] - KeyData[0];
    Move(x,OutBlock,Sizeof(x));
  end;
end;

procedure RC6Init;
var
  xKeyD: array[0..63] of LongWord;
  i, j, k, xKeyLen: longint;
  A, B: LongWord;
begin
  if (Size> 2048) or (Size<= 0) or ((Size mod 8)<> 0) then
    Exit;

  with Data do
  begin
    Size:= Size div 8;
    FillChar(xKeyD,Sizeof(xKeyD),0);
    Move(Key,xKeyD,Size);
    xKeyLen:= Size div 4;
    if (Size mod 4)<> 0 then
      Inc(xKeyLen);
    Move(sBox,KeyData,((NUMROUNDS*2)+4)*4);
    i:= 0; j:= 0;
    A:= 0; B:= 0;
    if xKeyLen> ((NUMROUNDS*2)+4) then
      k:= xKeyLen*3
    else
      k:= ((NUMROUNDS*2)+4)*3;
    for k:= 1 to k do
    begin
      A:= LRot32(KeyData[i]+A+B,3);
      KeyData[i]:= A;
      B:= LRot32(xKeyD[j]+A+B,A+B);
      xKeyD[j]:= B;
      i:= (i+1) mod ((NUMROUNDS*2)+4);
      j:= (j+1) mod xKeyLen;
    end;
    FillChar(xKeyD,Sizeof(xKeyD),0);

    if IVector= nil then
    begin
      FillChar(IV,Sizeof(IV),$FF);
      RC6EncryptECB(Data,IV,IV);
      Move(IV,LB,Sizeof(LB));
    end
    else
    begin
      Move(IVector^,IV,Sizeof(IV));
      Move(IV,LB,Sizeof(IV));
    end;
  end;
end;

procedure RC6Burn;
begin
  With Data do
  begin
    FillChar(KeyData,Sizeof(KeyData),$FF);
    FillChar(IV,Sizeof(IV),$FF);
    FillChar(LB,Sizeof(LB),$FF);
  end;
end;

procedure RC6Reset;
begin
  with Data do
    Move(IV,LB,Sizeof(LB));
end;

procedure RC6EncryptCBC;
var
  TB: array[0..15] of byte;
  i: longint;
begin
  with Data do
  begin
    for i:= 1 to (Size div 16) do
    begin
      XorBlock(pointer(longint(@InData)+((i-1)*16)),@LB,@TB,Sizeof(TB));
      RC6EncryptECB(Data,TB,TB);
      Move(TB,pointer(longint(@OutData)+((i-1)*16))^,Sizeof(TB));
      Move(TB,LB,Sizeof(TB));
    end;
    if (Size mod 16)<> 0 then
    begin
      RC6EncryptECB(Data,LB,TB);
      XorBlock(@TB,@pointer(longint(@InData)+Size-(Size mod 16))^,@pointer(longint(@OutData)+Size-(Size mod 16))^,Size mod 16);
    end;
    FillChar(TB,Sizeof(TB),$FF);
  end;
end;

procedure RC6DecryptCBC;
var
  TB: array[0..15] of byte;
  i: longint;
begin
  with Data do
  begin
    for i:= 1 to (Size div 16) do
    begin
      Move(pointer(longint(@InData)+((i-1)*16))^,TB,Sizeof(TB));
      RC6DecryptECB(Data,pointer(longint(@InData)+((i-1)*16))^,pointer(longint(@OutData)+((i-1)*16))^);
      XorBlock(@LB,pointer(longint(@OutData)+((i-1)*16)),pointer(longint(@OutData)+((i-1)*16)),Sizeof(TB));
      Move(TB,LB,Sizeof(TB));
    end;
    if (Size mod 16)<> 0 then
    begin
      RC6EncryptECB(Data,LB,TB);
      XorBlock(@TB,@pointer(longint(@InData)+Size-(Size mod 16))^,@pointer(longint(@OutData)+Size-(Size mod 16))^,Size mod 16);
    end;
    FillChar(TB,Sizeof(TB),$FF);
  end;
end;

procedure RC6EncryptCFB;
var
  i: longint;
  TB: array[0..15] of byte;
begin
  with Data do
  begin
    for i:= 0 to Size-1 do
    begin
      RC6EncryptECB(Data,LB,TB);
      PByteArray(@OutData)^[i]:= PByteArray(@InData)^[i] xor TB[0];
      Move(LB[1],LB[0],15);
      LB[15]:= PByteArray(@OutData)^[i];
    end;
  end;
end;

procedure RC6DecryptCFB;
var
  i: longint;
  TB: array[0..15] of byte;
  b: byte;
begin
  with Data do
  begin
    for i:= 0 to Size-1 do
    begin
      b:= PByteArray(@InData)^[i];
      RC6EncryptECB(Data,LB,TB);
      PByteArray(@OutData)^[i]:= PByteArray(@InData)^[i] xor TB[0];
      Move(LB[1],LB[0],15);
      LB[15]:= b;
    end;
  end;
end;


end.

