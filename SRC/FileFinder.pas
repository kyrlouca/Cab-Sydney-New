unit FileFinder;

interface

uses Contnrs, System.ioUtils;

type
  TFileDetails = class
    Name: String;
    Size, Time: int64;
  end;

  TFileFinder = Class(TObject)
  published
    FileList: TObjectList;
    constructor Create(const APath: string);
    destructor Destroy; override;
  private
    procedure FileListAppendFileNames(const AFileList: TObjectList; const APath: string);
  end;

implementation

constructor TFileFinder.Create(const APath: string);
  begin
    Inherited Create;
    FileList := TObjectList.Create;

  end;

destructor TFileFinder.Destroy;
  begin

    for var i := FileList.Count - 1 downto 0 do FileList.Delete(i);

    FileList.Free;
    inherited Destroy;

  end;

procedure TFileFinder.FileListAppendFileNames(const AFileList: TObjectList; const APath: string);
  var
    LDetails: TFileDetails;
    LSearchRec: TSearchRec;
  begin
    if FindFirst(APath + AllFilesMask, 0, LSearchRec) = 0 then
    begin
      try
        repeat
          LDetails := TFileDetails.Create;
          LDetails.Name := LSearchRec.Name;
          LDetails.Size := LSearchRec.Size;
          LDetails.Time := LSearchRec.Time;
          AFileList.Add(LDetails);
        until FindNext(LSearchRec) <> 0;
      finally
        FindClose(LSearchRec);
      end;
    end;
  end;

end.
