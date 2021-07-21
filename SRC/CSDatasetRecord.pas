{===============================================================================
  CSDatasetRecord - CodeSite Dataset Record Unit

  This is Raize Software's CSDatasetRecord unit updated for CodeSite 3.

  Copyright © 2006 by Rich Ackerson
===============================================================================}

unit CSDatasetRecord;

interface

uses
  DB, CodeSiteLogging;

const
  csmDatasetRecord = csmUser + 1;

type
  TCSDatasetRecordFormatter = class(TCodeSiteFormatter)
  public
    function InspectorType: TCodeSiteInspectorType; override;
    procedure FormatData(var Data); override;
  end;

procedure CSSendDatasetRecord(const Msg: string; Dataset: TDataset);

implementation

uses
  SysUtils;

{=======================================}
{== TCSDatasetRecordFormatter Methods ==}
{=======================================}

function TCSDatasetRecordFormatter.InspectorType: TCodeSiteInspectorType;
begin
  Result := itStockTable;
end;


procedure TCSDatasetRecordFormatter.FormatData(var Data);
var
  Dataset: TDataset;
  i: Integer;
begin
  Dataset := TDataset(Data);

  for i := 0 to Dataset.FieldCount - 1 do
    AddNameValuePair(Dataset.FieldList[i].DisplayName, Dataset.Fields[i].AsString);
end;


{=====================}
{== Support Methods ==}
{=====================}

procedure CSSendDatasetRecord(const Msg: string; Dataset: TDataset);
begin
  CodeSite.SendCustomData(csmDatasetRecord, Msg, Dataset);
end;


initialization
  // Custom formatter classes are registered with the CodeSite Object Manager,
  // CodeSiteManager, so that all TCodeSite objects will have access to the
  // custom formatter classes.

  CodeSiteManager.RegisterCustomFormatter(csmDatasetRecord, TCSDatasetRecordFormatter);

end.


