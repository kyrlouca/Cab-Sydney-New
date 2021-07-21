unit U_ClairDML;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, MemDS, IBCError, Db, DASQLMonitor, IBCSQLMonitor;

type

  TClairDML = class(TDataModule)
    CabCOnnection: TIBCConnection;
    UsedForReadOnlyTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    CabImagesReadCommittedTran: TIBCTransaction;
    CabImagesUpdateTran: TIBCTransaction;
    IBCSQLMonitor1: TIBCSQLMonitor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectToDatabase;
//    procedure ConnectToCabImage;
    function OpenFile(const InFileName: string; var InFile: TextFile): Boolean;
  end;

var
  ClairDML: TClairDML;

implementation

{$R *.DFM}

procedure TClairDML.ConnectToDatabase;
var
  FBClientPath: string;
  InFile: TextFile;
  LIne: string;
  ServerIP, DatabasePath: string;
  TextArray: array[1..3] of string;
  I: Integer;

  LStrings: TStringList;
  FileName: string;
begin

  FileName := ExtractFilePath(Application.ExeName) + 'DatabaseParams.txt';
  LStrings := TStringList.Create;
  try
    LStrings.Loadfromfile(FileName);
    if LStrings.Count < 2 then
    begin
      raise exception.create('File Must contain at least 2 lines');
    end;
    ServerIP := LStrings[0];
    DatabasePath := LStrings[1];
  finally
    FreeAndNil(LStrings);
  end;






  CabConnection.Server := ServerIP;
  CabConnection.database := DatabasePath;

  FbClientPath := ExtractFileDir(ExtractFilePath(Application.EXEName));
  FbClientPath := FBClientPath + '\fbclient.dll';

        //FbClientPath:=FBClientPath+'\Fbclient.dll';

  CabConnection.ClientLibrary := FBClientPath;
  if CabConnection.connected then
    CabConnection.Disconnect;

  CabConnection.Connect;
  if not CabConnection.Connected then
    ShowMessage('Cannot connect');

end;

{
procedure TClairDML.ConnectToCabImage;
Var
        FBClientPath:String;
        InFile:TextFile;
        LIne:String;
        ServerIP,DatabasePath:String;
        TextArray : Array [1..3] of String;
        I:Integer;
begin

        If not OpenFile('DatabaseParamsCabImage.txt',InFile) then begin
                exit;
                //raise exception.create('Cannot open file');
        end;
        I:=0;
        while (not Eof(Infile) and (I<2) )do begin
                Inc(i);
                Readln(InFile,TextArray[i]);
        end;
        If (I<2) then begin
                ShowMEssage('File must have two lines. First line for server ip, second line for Full database file');
        end else begin
                ServerIP:=TextArray[1];
                DatabasePath:=TextArray[2];
        end;
        CloseFile(Infile);

        CabImages.Server:=ServerIP;
        CabImages.database:=DatabasePath;

        FbClientPath:=ExtractFileDir( ExtractFilePath(Application.EXEName)  );
        FbClientPath:=FBClientPath+'\gds32.dll';

        CabImages.ClientLibrary := FBClientPath;
        If CabImages.connected then
                CabImages.Disconnect;

        CabImages.Connect;

End;
}

function TClairDML.OpenFile(const InFileName: string; var InFile: TextFile):
  Boolean;
var
  AppDirectory: string;
  ParamFIleName: string;
  TheFileName: string;
begin

  AppDirectory := ExtractFilePath(Application.ExeName);
//ParamFileName:=APpDirectory+'DatabaseParams.txt';
  ParamFileName := APpDirectory + InFileName;

  Result := False;

{$I-}
  TheFileName := ParamFileName;
  AssignFile(InFile, TheFileName);
  Reset(InFile);
{$I+}
  if IOResult <> 0 then
  begin
    Result := false;
        //raise exception.create('Cannot Open Database Parameter file:'+ThefileName);
  end
  else
  begin
    Result := True;

  end;

end;

procedure TClairDML.DataModuleCreate(Sender: TObject);
begin
  ConnectToDatabase;
//ConnectToCabImage;

end;

end.

