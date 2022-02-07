unit UnPiraDBExpress;

interface

uses
  Bde, SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, DB, FileCtrl, DBTables, Gauges, ExtCtrls,
  CheckLst, ComCtrls, IBDatabase, IBCustomDataSet, IBQuery, IBTable, IBSQL,
  DynamicSkinForm, SkinData, SkinCtrls, SkinBoxCtrls, Mask;

type rCampos = record
       Nombre: string;
       Defect: variant;
       Nulo: boolean;
     end;

type
  TFrmMain = class(TForm)
    Table: TTable;
    Database1: TDatabase;
    CBDatabase: TspSkinComboBox;
    Label1: TspSkinStdLabel;
    BtnExport: TspSkinButton;
    Label4: TspSkinStdLabel;
    RadioGroup1: TspSkinRadioGroup;
    Edit1: TspSkinEdit;
    Label6: TspSkinStdLabel;
    Edit2: TspSkinPasswordEdit;
    Label2: TspSkinStdLabel;
    Edit3: TspSkinEdit;
    TCampos: TQuery;
    TCamposNOMBRE: TIBStringField;
    TCamposTIPO: TSmallintField;
    TCamposNULO: TSmallintField;
    Query1: TQuery;
    Button1: TspSkinButton;
    GroupBox1: TspSkinGroupBox;
    Label7: TspSkinStdLabel;
    EdTrue: TspSkinEdit;
    EdFalse: TspSkinEdit;
    Label8: TspSkinStdLabel;
    spStoredSkin1: TspStoredSkin;
    spSkinData1: TspSkinData;
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinButton1: TspSkinButton;
    spSkinGroupBox2: TspSkinGroupBox;
    CheckBox5: TspSkinCheckRadioBox;
    AutFillNon: TspSkinCheckRadioBox;
    AutFillNum: TspSkinCheckRadioBox;
    CheckBox4: TspSkinCheckRadioBox;
    CheckBox3: TspSkinCheckRadioBox;
    CheckBox1: TspSkinCheckRadioBox;
    CheckBox2: TspSkinCheckRadioBox;
    CreateTableCheckBox: TspSkinCheckRadioBox;
    ChBoImportar: TspSkinCheckRadioBox;
    spSkinGroupBox3: TspSkinGroupBox;
    LBTable: TspSkinCheckListBox;
    GrBoImportacao: TspSkinGroupBox;
    Memo1: TspSkinMemo;
    Progress: TspSkinGauge;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure CBDatabaseChange(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    function  CreateScript: string;
    function  IndexScript: string;
    procedure Database1DialectDowngradeWarning(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure spSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tbl : TFileName;
  end;

var
  FrmMain: TFrmMain;

implementation
{$R *.DFM}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Session.GetDatabaseNames(CBDatabase.Items);
end;

procedure TFrmMain.CBDatabaseChange(Sender: TObject);
begin
  Session.GetTableNames( CBDatabase.Items[CBDatabase.ItemIndex], '',
                         True, False, LBTable.Items);
  LBTable.Sorted := True;
  BtnExport.Enabled := LBTable.Items.Count > 0;
end;

procedure TFrmMain.BtnExportClick(Sender: TObject);
var
  Err: boolean;
  i, rec : longint;
  indexTable : integer;
  strSql, StrSq2: string;
  TimeStart: Double;
  aCampos: array of rCampos;
  BoolY, BoolN: string;
begin
  if Length(Edit3.Text)=0 then
    begin
      MessageDlg('Defina DB.', mtError, [mbOK], 0);
      Exit;
    end;

  Table.DatabaseName := CBDatabase.Items[CBDatabase.ItemIndex];
(*
  Database1.DataBaseName := Edit3.Text;
  Database1.Params.Clear;
  if Length(Edit1.Text)>0 then
    Database1.Params.Add('user_name='+Edit1.Text);
  if Length(Edit2.Text)>0 then
    Database1.Params.Add('password='+Edit2.Text);
  Database1.LoginPrompt := (Length(Edit1.Text)=0) or (Length(Edit2.Text)=0);
*)
  Database1.Connected := True;

// standard formats for interbase
  ShortDateFormat := 'mm/dd/yyyy';
  LongTimeFormat := 'hh:mm:ss';
  DecimalSeparator := '.';
// value for boolean fields
  BoolY := EdTrue.Text;
  BoolN := EdFalse.Text;

  Memo1.Clear;

  TimeStart := Time;
  Try
  for indexTable:= 0 to LBTable.Items.Count-1 do
    begin
      IF ChBoImportar.Checked Then
        Exit
      ;
      Progress.Visible := True;
      LBTable.Selected[indexTable] := True;
      if LBTable.Checked[indexTable] then
        try
          Table.TableName := LBTable.Items[indexTable];
          Table.Open;

          Memo1.Lines.Add(#13#10+TimeToStr(Time)+' Processando Tabela ' + Table.TableName);

          tbl := Table.TableName;
          Delete(tbl, Pos('.', tbl), length(tbl));

          Progress.MinValue := 0;
          if Table.RecordCount = 0 then
            Progress.MaxValue := 1
          else
            Progress.MaxValue := Table.RecordCount
          ;
          Progress.Value := 0;
          Progress.Show;

          Err := False;

          if CreateTableCheckBox.Checked then
            try
              strSql := CreateScript;
              if Length(strsql)=0 then raise exception.Create('');
              Query1.SQL.Text := UpperCase(strSql);
//              Transact.StartTransaction;
              Query1.ExecSQL;
//              Transact.Commit;
              Memo1.Lines.Add(TimeToStr(Time)+' Criação da Tabela ' + tbl + ' ok - Total de registros no paradox [' + FloatToStrF( Progress.MaxValue, ffNumber, 15, 0 ) + ']' );
            except
              on E: exception do begin
                Memo1.Lines.Add(TimeToStr(Time)+'***> Erro ao criar a tabela '+tbl);
//                if Transact.InTransaction then
//                  Transact.Rollback;
                E.Message := E.Message+#13'SQL'#13+strSql;
                raise;
              end;
            end;

          if CheckBox2.Checked then
            try
              TCampos.Close;
              TCampos.ParamByName('TABLA').Value := UpperCase(tbl);
              TCampos.Open;

              StrSql := '';
              StrSq2 := '';
              SetLength(aCampos,0);
              while not TCampos.Eof do begin
                if (Table.FindField(Trim(TCamposNOMBRE.Value)) <> nil) or (TCamposNULO.Value = 1) then begin
                  if Length(StrSql) > 0 then begin
                    StrSql := StrSql+',';
                    StrSq2 := StrSq2+',';
                  end;
                  i := Length(aCampos);
                  SetLength(aCampos,i+1);
                  aCampos[i].Nombre := Trim(TCamposNOMBRE.Value);
                  aCampos[i].Nulo   := TCamposNULO.Value <> 1;
                  case TCamposTIPO.Value of
                    14, 37, 40: aCampos[i].Defect := ' ';
                    12: aCampos[i].Defect := StrToDate('01/01/1900');
                    13: aCampos[i].Defect := StrToTime('12:00');
                    35: aCampos[i].Defect := StrToDate('01/01/1900');
                  else
                    aCampos[i].Defect := 0;
                  end;

                  StrSql := StrSql + aCampos[i].Nombre;
                  StrSq2 := StrSq2 + ':'+aCampos[i].Nombre;
                end;
                TCampos.Next;
              end;
//              Transact.Commit;

              if Length(StrSql)=0 then
                raise Exception.Create('não existe nenhum campo que coincida com este nome ');

              Query1.SQL.Text := UpperCase('INSERT INTO '+tbl+' ('+StrSql+') VALUES('+StrSq2+')');
              Memo2.Text := Query1.SQL.Text ;
              Query1.Prepare;


              rec := 0;
              Table.First;
              while not Table.Eof do
              begin
                IF ChBoImportar.Checked Then
                  Exit
                ;
                rec := rec + 1;
//                GrBoImportacao.Caption := 'Log da Importação. Registro [' + FloatToStrF( rec, ffNumber, 10, 0 ) + '] de [' + FloatToStrF( Progress.MaxValue, ffNumber, 10, 0 ) + ']';
                for i := 0 to Length(aCampos)-1 do
                  if (Table.FindField(aCampos[i].Nombre) <> nil) and
                     (Table.FieldByName(aCampos[i].Nombre).DataType = ftBoolean) then
                      if Table.FieldByName(aCampos[i].Nombre).IsNull then
                        Query1.Params.ParamByName(aCampos[i].Nombre).Value := BoolN
                      else
                        if Table.FieldByName(aCampos[i].Nombre).Value then
                          Query1.Params.ParamByName(aCampos[i].Nombre).Value := BoolY
                        else
                          Query1.Params.ParamByName(aCampos[i].Nombre).Value := BoolN
                  else
                    if (Table.FindField(aCampos[i].Nombre) = nil) or Table.FieldByName(aCampos[i].Nombre).IsNull then
                      if aCampos[i].Nulo then
                        Query1.Params.ParamByName(aCampos[i].Nombre).Clear
                      else
                        Query1.Params.ParamByName(aCampos[i].Nombre).Text := aCampos[i].Defect
                    else
                      IF Not Table.FieldByName(aCampos[i].Nombre).IsNull Then
                        Query1.Params.ParamByName(aCampos[i].Nombre).Value := Table.FieldByName(aCampos[i].Nombre).Value;

                Table.Next;
                Application.ProcessMessages;
                Try
                  Query1.ExecSQL;
                Except
                  Memo1.Lines.Add(TimeToStr(Time)+'***> Erro ao incluir o registro [' + IntToStr( rec ) + '] na tabela '+tbl );
                End;

                Progress.Value := rec;
                if CheckBox5.Checked and (rec mod 10000 = 0) then
                begin
//                  Transact.Commit;
//                  Transact.StartTransaction;
                  Memo1.Lines.Add(TimeToStr(Time)+' '+IntToStr(rec)+' registros gravados');
                  Update;
                end;
              end;

              Query1.Unprepare;
//              Transact.Commit;
              Memo1.Lines.Add(TimeToStr(Time)+' Dados da tabela '+tbl+' foram gravados com sucesso');
            except
              on E: Exception do begin
                if Query1.Prepared then Query1.Unprepare;
//                if Transact.InTransaction then Transact.Commit;
                Memo1.Lines.Add(TimeToStr(Time)+'***> Erro ao gravar os dados da tabela '+tbl );
                E.Message := E.Message+#13'SQL'#13+Query1.Sql.Text;
                raise;
              end;
            end;

          if CheckBox1.Checked and not Err then
            try
//              Transact.StartTransaction;
              strSql := IndexScript;
              IF strSql <> '' Then
                Begin
                  Query1.SQL.Text := strSql;
                  Query1.ExecSQL;
//                  Transact.Commit;
                  Memo1.Lines.Add(TimeToStr(Time)+' Criado os indices secundários da tabela '+tbl);
                End
              ;
            except
              (*
              on E: Exception do begin
                Memo1.Lines.Add(TimeToStr(Time)+' Table '+tbl+' Error creating secondary indexes');
                if Transact.InTransaction then
                  Transact.Rollback;
                E.Message := E.Message+#13'SQL'#13+strSql;
                raise;
              end;
              *)
              Memo1.Lines.Add(TimeToStr(Time)+'***> Erro ao criar os indices secundários da tabela '+tbl);
            end;
        except
          on E: Exception do MessageDlg(E.Message,mtError,[mbOK],0);
        end;
        GrBoImportacao.Caption := 'Log da Importação';
        Table.Close;
        Query1.Close;
        Query1.Unprepare;
//        IF Transact.Active Then
//          Transact.Commit
//        ;
   end;
   Finally
     Progress.Visible := False;
     Table.Close;
     Query1.Close;
     Query1.Unprepare;
//     IF Transact.Active Then
//       Transact.Rollback
//     ;
     IF ChBoImportar.Checked Then
       ShowMessage( 'Importação interrompida pelo usuário' )
     ;
   End;
   Database1.Connected := False;
   Memo1.Lines.Add(#13#10+TimeToStr(Time)+' Importação concluída '+TimeToStr(Time-TimeStart));
   Memo1.Lines.SaveToFile( 'C:\LOGIMPORTACAO.TXT' );
   ShowMessage( 'Final da Importação' );
end;

function TFrmMain.CreateScript: string;
var
  curProp: CURProps;
  pfldDes, pCurFld: pFLDDesc;
  // pfldDes is a pointer to a list of field descriptors.
  // It must be allocated with (iFields * sizeof(FLDDesc))
  // where iFields is a field in the structure curProps
  // from DbiGetCursorProps
  // pCurFld is a pointer the description of one field in the list.
  MemSize: Integer;
  FieldList: string;

  i, k: integer;
  err: boolean;
  sqlDataType, primaryKey, strSql: string;
  name: string;
  nTamBoll: Integer;
begin
  strSql := 'CREATE TABLE ' + UpperCase(tbl) + ' ( ';

  primaryKey := '';
  err := False;

  Check(DbiGetCursorProps(Table.Handle, curProp));

  // Get enough memory for one field desc times the # of fields
  MemSize := curProp.iFields * SizeOf(FLDDesc);
  pfldDes := AllocMem(MemSize);
  try
    pCurFld := pfldDes;
    Check(DbiGetFieldDescs(Table.Handle, pfldDes));
    I := 0;
    FieldList := '';
    while (i < curProp.iFields) do begin
      sqlDataType := '';

      case pCurFld.iFldType of
        fldZSTRING:    if CheckBox3.Checked then
                         sqlDataType := 'VARCHAR(' + IntToStr( Table.Fields[i].DataSize-1)+')'
                       else
                         sqlDataType := 'CHAR(' + IntToStr( Table.Fields[i].DataSize-1)+')';
        fldINT16:      sqlDataType := 'SMALLINT';
        fldstAUTOINC,
        fldINT32:      sqlDataType := 'INTEGER';
        fldBCD,
        fldFLOAT:      if pCurFld.iUnits1 > 1 then
                         Begin
                           if pCurFld.iUnits2 = 0 then
                             begin
                               if pCurFld.iUnits1 < 5 then
                                 sqlDataType := 'SMALLINT'
                               else if pCurFld.iUnits1 < 10 then
                                 sqlDataType := 'INTEGER'
                               else
                          //       if Database1.SQLDialect = 3 then
                          //         sqlDataType := 'NUMERIC(18,0)'
                          //       else
                                   sqlDataType := 'DOUBLE PRECISION'
                               ;
                             end
                           else // if pCurFld.iUnits2 = 0 then
                             begin
                               if pCurFld.iUnits1 > 15 then
                                 k := 18
                               else
                                 k := pCurFld.iUnits1 - 1
                               ;
                               sqlDataType := 'NUMERIC('+IntToStr(k)+','+IntToStr(pCurFld.iUnits2)+')'
                             end
                           ;
                         End
                       else
//                         sqlDataType := 'FLOAT'
                         sqlDataType := 'DOUBLE PRECISION'
//                         sqlDataType := 'NUMERIC(12,4)'
                       ;
        fldTIME: sqlDataType := 'TIME';
        fldDATE: sqlDataType := 'DATE';
        fldTIMESTAMP:  sqlDataType := 'TIMESTAMP';
        fldBOOL: Begin
                   nTamBoll := Length( Trim(EdFalse.Text) );
                   Case nTamBoll Of
                     0..1: sqlDataType := 'CHAR(1)'
                   Else
                     sqlDataType := 'VARCHAR(' + IntToStr( nTamBoll ) + ')';
                   End;

                 End;
        fldstMEMO,
        fldBLOB:       sqlDataType := 'BLOB';
      else
        showMessage('Tipo de Campo não reconhecido');
        err := True;
      end;

      if Length(sqlDataType) > 0 then
        begin
          // the following makes the field compatible with dialect 1
          name := UpperCase(pCurFld.szName);
          name := StringReplace(name,'Ñ','N',[rfReplaceAll]);
          name := StringReplace(name,'/','_',[rfReplaceAll]);
          name := StringReplace(name,' ','_',[rfReplaceAll]);

          if pCurFld.iFldType = fldBOOL then
            sqlDataType := sqlDataType + ' NOT NULL'
          else
            begin

              if Table.FieldByName(pCurFld.szName).DefaultExpression <> '' then
                sqlDataType := sqlDataType + ' DEFAULT=' + Table.FieldByName(pCurFld.szName).DefaultExpression;

              if CheckBox4.Checked or Table.FieldByName(pCurFld.szName).Required or Table.FieldByName(pCurFld.szName).IsIndexField then
                sqlDataType := sqlDataType + ' NOT NULL';

              if Table.FieldByName(pCurFld.szName).IsIndexField then
                primaryKey := primaryKey + pCurFld.szName + ', '
              ;
            end;

          strSql := strSql + name;
          strSql := strSql + ' ' + sqlDataType;
        end;

      if i < curProp.iFields-1 then strSql := strSql + ', ';

      inc(pCurFld);
      inc(i);
    end;
  finally
    FreeMem(pfldDes, MemSize);
  end;

  // here we remove the last ',' of the primary key
  delete( primaryKey, length(primaryKey)-1, 2);
  if primaryKey <> '' then
     strSql := strSql + ', PRIMARY KEY (' + primaryKey + ') ';

  strSql := strSql +  ');';

  result := strSql;

  if err then result := '';

end;

function TFrmMain.IndexScript: string;
var
  i, j: integer;
  iFields, strSql: string;
begin
  strSql := '';
  Table.IndexDefs.Update;
  for i := 0 to Table.IndexDefs.Count-1 do
    begin
      if ixPrimary in Table.IndexDefs[i].Options then continue;
      if ixExpression in Table.IndexDefs[i].Options then continue;

      strSql := 'CREATE ';

      if ixUnique in Table.IndexDefs[i].Options then
        strSql := strSql + 'UNIQUE ';

      if ixDescending in Table.IndexDefs[i].Options then
        strSql := strSql + 'DESC ';

      strSql := strSql + 'INDEX ' + tbl + '_' + Table.IndexDefs[i].Name + ' ON ' + tbl + '( ';
      iFields := Table.IndexDefs[i].Fields;
      j := pos( ';', iFields);
      while j > 0 do
        begin
          delete( iFields, j, 1);
          insert( ',', iFields, j);
          j := pos( ';', iFields);
        end;
        strSql := strSql + iFields + ');';
    end;
    result := strSql;
end;

procedure TFrmMain.Database1DialectDowngradeWarning(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 0;
end;

procedure TFrmMain.Button1Click(Sender: TObject);
Var
  i: Integer;
begin
  for i:= 0 to LBTable.Items.Count-1 do
    begin
      IF ChBoImportar.Checked Then
        Exit
      ;
      LBTable.Checked[i] := True;
      Application.ProcessMessages;
    End
  ;
end;

procedure TFrmMain.spSkinButton1Click(Sender: TObject);
begin
  Close;
end;

end.
