unit X_FileFinder;

interface

uses Contnrs, System.ioUtils, System.SysUtils, System.Generics.Defaults, System.Generics.Collections, System.AnsiStrings, System.DateUtils;

type
  TDateComparer = class(TComparer<TDateTime>)
  public
    function Compare(const Left, Right: TDateTime): Integer; override;
  end;

  TFileDetails = class
    Name: String;
    Size, Time: int64;
    CreateTime: TDateTime;
  end;

  TFileFinder = Class(TObject)
  published
    FileList: TObjectList<TFileDetails>;
    constructor Create(const APath: string);
    destructor Destroy; override;
    procedure SortList();
  private
    procedure CreateFileList(const APath: string);

  end;

implementation

constructor TFileFinder.Create(const APath: string);
  begin
    Inherited Create;
    FileList := TObjectList<TFileDetails>.Create;
    self.CreateFileList(APath);
    // self.SortList();
  end;

destructor TFileFinder.Destroy;
  begin

    for var i := FileList.Count - 1 downto 0 do FileList.Delete(i);

    FileList.Free;
    inherited;

  end;

function TDateComparer.Compare(const Left, Right: TDateTime): Integer;
  var
    LeftTerm, RightTerm: TDateTime;
  begin

    result := CompareDateTime(Left, Right);
  end;

// const AComparer: IComparer<T>

procedure TFileFinder.SortList();
  begin

    FileList.Sort(TComparer<TFileDetails>.Construct(
      function(const A, B: TFileDetails): Integer
        begin
          result := CompareDateTime(A.CreateTime, B.CreateTime);
        end))
  end;

procedure TFileFinder.CreateFileList(const APath: string);
  var searchResult: TSearchRec;
  begin
    if FindFirst(APath, faAnyFile, searchResult) = 0 then
    begin
      try
        repeat
          var
          LDetails := TFileDetails.Create;
          LDetails.Name := searchResult.Name;
          LDetails.Size := searchResult.Size;
          LDetails.Time := searchResult.Time;
          LDetails.CreateTime := FileDateToDateTime(searchResult.Time);

          var isDir: Boolean := (searchResult.Attr and faDirectory) <> 0;

          if (LDetails.Name <> '.') and (LDetails.Name <> '..') and (not isDir) then
          begin
            FileList.Add(LDetails);
          end;

        until FindNext(searchResult) <> 0;
      finally
        FindClose(searchResult);
      end;
    end;
  end;

end.
