unit Ths.Erp.Database.Table.AyarPrsRaporTipi;

interface

{$I ThsERP.inc}

uses
  SysUtils, Classes, Dialogs, Forms, Windows, Controls, Types, DateUtils,
  FireDAC.Stan.Param, System.Variants, Data.DB,
  Ths.Erp.Database,
  Ths.Erp.Database.Table;

type
  TAyarPrsRaporTipi = class(TTable)
  private
    FRaporTipi: TFieldDB;
  protected
  published
    constructor Create(OwnerDatabase:TDatabase);override;
  public
    procedure SelectToDatasource(pFilter: string; pPermissionControl: Boolean=True); override;
    procedure SelectToList(pFilter: string; pLock: Boolean; pPermissionControl: Boolean=True); override;
    procedure Insert(out pID: Integer; pPermissionControl: Boolean=True); override;
    procedure Update(pPermissionControl: Boolean=True); override;

    function Clone():TTable;override;

    Property RaporTipi: TFieldDB read FRaporTipi write FRaporTipi;
  end;

implementation

uses
  Ths.Erp.Constants,
  Ths.Erp.Database.Singleton;

constructor TAyarPrsRaporTipi.Create(OwnerDatabase:TDatabase);
begin
  TableName := 'ayar_prs_rapor_tipi';
  SourceCode := '1000';

  inherited Create(OwnerDatabase);

  FRaporTipi := TFieldDB.Create('rapor_tipi', ftString, '');
end;

procedure TAyarPrsRaporTipi.SelectToDatasource(pFilter: string; pPermissionControl: Boolean=True);
begin
  if IsAuthorized(ptRead, pPermissionControl) then
  begin
    with QueryOfDS do
    begin
      Close;
      SQL.Clear;
      SQL.Text := Database.GetSQLSelectCmd(TableName, [
        TableName + '.' + Self.Id.FieldName,
        getRawDataByLang(TableName, FRaporTipi.FieldName)
      ]) +
      'WHERE 1=1 ' + pFilter;
      Open;
      Active := True;

      Self.DataSource.DataSet.FindField(Self.Id.FieldName).DisplayLabel := 'ID';
      Self.DataSource.DataSet.FindField(FRaporTipi.FieldName).DisplayLabel := 'Rapor Tipi';
    end;
  end;
end;

procedure TAyarPrsRaporTipi.SelectToList(pFilter: string; pLock: Boolean; pPermissionControl: Boolean=True);
begin
  if IsAuthorized(ptRead, pPermissionControl) then
  begin
    if (pLock) then
		  pFilter := pFilter + ' FOR UPDATE OF ' + TableName + ' NOWAIT';

    with QueryOfList do
    begin
      Close;
      SQL.Text := Database.GetSQLSelectCmd(TableName, [
        TableName + '.' + Self.Id.FieldName,
        getRawDataByLang(TableName, FRaporTipi.FieldName)
      ]) +
      'WHERE 1=1 ' + pFilter;
      Open;

      FreeListContent();
      List.Clear;
      while NOT EOF do
      begin
        Self.Id.Value := FormatedVariantVal(FieldByName(Self.Id.FieldName).DataType, FieldByName(Self.Id.FieldName).Value);

        FRaporTipi.Value := FormatedVariantVal(FieldByName(FRaporTipi.FieldName).DataType, FieldByName(FRaporTipi.FieldName).Value);

        List.Add(Self.Clone());

        Next;
      end;
      Close;
    end;
  end;
end;

procedure TAyarPrsRaporTipi.Insert(out pID: Integer; pPermissionControl: Boolean=True);
begin
  if IsAuthorized(ptAddRecord, pPermissionControl) then
  begin
    {$IFDEF CRUD_MODE_SP}
      SpInsert.ExecProc;
      pID := SpInsert.ParamByName('result').AsInteger;
      Self.Notify;
    {$ELSE IFDEF CRUD_MODE_PURE_SQL}
      with QueryOfInsert do
      begin
        Close;
        SQL.Clear;
        SQL.Text := Database.GetSQLInsertCmd(TableName, QUERY_PARAM_CHAR, [
          FRaporTipi.FieldName
        ]);

        NewParamForQuery(QueryOfInsert, FRaporTipi);

        Open;
        if (Fields.Count > 0) and (not Fields.FieldByName(Self.Id.FieldName).IsNull) then
          pID := Fields.FieldByName(Self.Id.FieldName).AsInteger
        else
          pID := 0;

        EmptyDataSet;
        Close;
      end;
      Self.Notify;
    {$ENDIF}
  end;
end;

procedure TAyarPrsRaporTipi.Update(pPermissionControl: Boolean=True);
begin
  if IsAuthorized(ptUpdate, pPermissionControl) then
  begin
    {$IFDEF CRUD_MODE_SP}
      SpUpdate.ExecProc;
      Self.Notify;
    {$ELSE IFDEF CRUD_MODE_PURE_SQL}
      with QueryOfUpdate do
      begin
        Close;
        SQL.Clear;
        SQL.Text := Database.GetSQLUpdateCmd(TableName, QUERY_PARAM_CHAR, [
          FRaporTipi.FieldName
        ]);

        NewParamForQuery(QueryOfUpdate, FRaporTipi);

        NewParamForQuery(QueryOfUpdate, Id);

        ExecSQL;
        Close;
      end;
      Self.Notify;
    {$ENDIF}
  end;
end;

function TAyarPrsRaporTipi.Clone():TTable;
begin
  Result := TAyarPrsRaporTipi.Create(Database);

  Self.Id.Clone(TAyarPrsRaporTipi(Result).Id);

  FRaporTipi.Clone(TAyarPrsRaporTipi(Result).FRaporTipi);
end;

end.
