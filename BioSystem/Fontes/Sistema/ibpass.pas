{
12/05/97 atanas stoyanov  - e-mail : astoyanov@nidlink.com
original hacking by G?rard Perreault - gperreau@igp.qc.ca - http://www.igp.qc.ca
}
unit IBPass;
interface
uses
  SysUtils,UnixPass;

function EncryptIBPass(Password : string) : string;


implementation


function EncryptIBPass(Password : string) : string;

const IBMagic = '9z';

function Encrypt (Key : string) : string;
var Buff : array[0..30] of char;
begin
  UnixPassword(IBMagic, StrPCopy(Buff,Key));
  Result := StrPas(Buff);
end;

begin
  Result := Copy(Encrypt(Copy(Encrypt(Copy(Password,1,9)), 3, 100)), 3, 100);
end;
end.
 