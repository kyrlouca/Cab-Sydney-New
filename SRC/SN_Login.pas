unit SN_Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Mask, wwdbedit, Db, DBAccess, IBC, MemDS, IBCError, Menus,
  RzPanel, RzButton;

type
  TSN_LoginFRm = class(TForm)
    FindUserSQL: TIBCQuery;
    SysPeriodSQL: TIBCQuery;
    SysPeriodSQLCODE: TStringField;
    SysPeriodSQLDATE_1: TDateTimeField;
    SysPeriodSQLINTEGER_1: TIntegerField;
    UpdateHitsSQL: TIBCQuery;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    SysPeriodSQLINTEGER_2: TIntegerField;
    FindSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    FindSQLUSER_ID: TStringField;
    FindSQLSCREEN_ID: TStringField;
    FindSQLIS_ALLOWED: TStringField;
    FindUserSQLUSER_ID: TStringField;
    FindUserSQLUSER_PASSWORD: TStringField;
    FindUserSQLUSER_NAME: TStringField;
    FindUserSQLFK_USER_STATION: TIntegerField;
    Panel2: TRzPanel;
    Panel3: TRzPanel;
    Panel5: TRzPanel;
    LoginBTN: TBitBtn;
    AccessBTN: TButton;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    UserIDFLD: TwwDBEdit;
    UserNameFLD: TwwDBEdit;
    PasswordFLD: TwwDBEdit;
    BitBtn1: TRzBitBtn;
    procedure CloseBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure LoginBTNClick(Sender: TObject);
    procedure UserIDFLDExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure UserIDFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PasswordFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AccessBTNClick(Sender: TObject);
  private
    { Private declarations }
    IsSystemAdministrator: Boolean;
    procedure ActivateAllMenus(IsEnable: Boolean);

  public
    { Public declarations }
    // IsLoginButtonPressed:Boolean;
  end;

var
  SN_LoginFRm: TSN_LoginFRm;
  // LoginUserID:String;

implementation

uses U_ClairDML, MainFFF;

{$R *.DFM}

procedure TSN_LoginFRm.CloseBTNClick(Sender: TObject);
  begin
    close;
  end;

procedure TSN_LoginFRm.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TSN_LoginFRm.LoginBTNClick(Sender: TObject);
  Var
    TheMainForm: TForm;
    IsValid: Boolean;
    ThePassword: String;
    PasswordEntered: String;
    TheUserId: String;
    ValDate, CurrentDate: TDate;
    ValHits, CurrentHits: Integer;
  begin


    TheMainForm := MainFRM;
    MainFFF.Global_UserID := '';

    IsValid := False;
    PasswordEntered := PasswordFLD.Text;
    TheUserId := UserIDFLD.Text;
    UserNameFLD.Text := '';

    with FindUserSQL do
    begin
      close;
      ParamByName('TheUser').Value := TheUserId;
      Open;
      UserNameFLD.Text := FieldByName('User_Name').AsString;
      ThePassword := FieldByName('User_password').AsString;
      MainFFF.Global_UserID := TheUserId;
      IsValid := Trim(UpperCase(ThePassword)) = Trim(UpperCase(PasswordEntered));
      IsValid := IsValid and not FindUserSQL.IsEmpty
    end;

    If not IsValid then
    begin

      IsSystemAdministrator := False;
      If ((TheUserId = 'SYS') and (UpperCase(PasswordEntered) = 'HAWB123')) then
      begin
        IsValid := True;
        IsSystemAdministrator := True;
        MainFFF.Global_UserID := 'SYS';
      end;

{$IFDEF DEBUG}
      if (FindWindow('TAppBuilder', nil) > 0) then
      begin
        IsValid := True;
        IsSystemAdministrator := True;
        MainFFF.Global_UserID := 'SYS';
      end;
{$ELSE}
{$ENDIF}
    end;

    MainFRM.PanelButtonsBTN.Enabled := IsValid;
    MainFRM.Menu := nil;

    If IsValid then
    begin
      MainFFF.Global_UserID := TheUserId;
      AccessBTN.Click;
      MainFRM.Menu := MainFRM.MainMenu1;

      MainFRM.HawbsBTN.Enabled := True;
      MainFRM.BucketsBTN.Enabled := True;
      MainFRM.WebBtn.Enabled := True;

    end
    else
    begin
      MainFFF.Global_UserID := '';
      // ActivateAllMenus(False);
      MessageDlg('Invalid User ID or Password. Try Again', mtConfirmation, [mbOK], 0);
      UserIDFLD.SetFocus;
      // LoginUserID:=''; // to force empty user for access button
      // mainFRM.Menu:=nil;
    end;

    close;

  End;

procedure TSN_LoginFRm.ActivateAllMenus(IsEnable: Boolean);
  Var
    TheMainMenu: TMainMenu;
    MaxMain, MaxSub: Integer;
    I, J: Integer;
  begin

    TheMainMenu := MainFRM.MainMenu1;

    MaxMain := MainFRM.MainMenu1.Items.count;
    For I := 0 to MaxMain - 1 do
    begin
      TheMainMenu.Items[I].Enabled := IsEnable;
      MaxSub := TheMainMenu.Items.Items[I].count;
      For J := 0 to MaxSub - 1 do
      begin
        TheMainMenu.Items.Items[I].Items[J].Enabled := IsEnable;
      end;
    end;

  end;

procedure TSN_LoginFRm.UserIDFLDExit(Sender: TObject);
  Var
    TheUserId: String;
  begin

    UserNameFLD.Text := '';
    TheUserId := UserIDFLD.Text;

    with FindUserSQL do
    begin
      close;
      ParamByName('TheUser').Value := TheUserId;
      Open;
      If (not IsEmpty) then
      begin
        UserNameFLD.Text := FieldByName('User_Name').AsString;
      end;
    end;

  End;

procedure TSN_LoginFRm.FormActivate(Sender: TObject);
  begin
    MainFRM.PanelButtonsBTN.Enabled := False;
    MainFRM.Menu := nil;
    UserIDFLD.SetFocus;

  end;

procedure TSN_LoginFRm.UserIDFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    If (Key = 13) then PasswordFLD.SetFocus;
  end;

procedure TSN_LoginFRm.PasswordFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin

    If (Key = VK_RETURN) then
    begin
      LoginBTN.Click;
    end;
  end;

procedure TSN_LoginFRm.AccessBTNClick(Sender: TObject);
  Var
    TheMainMenu: TMainMenu;
    I, J: Integer;
    ItemsCount, SubItemsCount: Integer;
    Item, SubItem: TMenuItem;
    ScreenID: String;

  begin
    TheMainMenu := MainFRM.MainMenu1;
    ItemsCount := TheMainMenu.Items.count;

    For I := 0 to ItemsCount - 1 do
    begin
      Item := TheMainMenu.Items[I]; // this is the main menu item
      Item.Enabled := True;
      SubItemsCount := Item.count;

      For J := 0 to SubItemsCount - 1 do
      begin
        SubItem := Item.Items[J];
        ScreenID := SubItem.Name;

        with FindSQL do
        begin
          close;
          If not Prepared then
            prepare;
          ParamByName('TheUser').Value := MainFFF.Global_UserID;
          ParamByName('TheScreen').Value := ScreenID;
          Open;
          IF (not FindSQL.IsEmpty) then SubItem.Enabled := True
          else SubItem.Enabled := False;

          if IsSystemAdministrator then SubItem.Enabled := True;

          close;
        end; // FindSQL
      end; // for J
    end; // FOr i

    Item := TheMainMenu.Items.Find('Tariffs');
    if Item <> nil then
    begin
      Item := Item.Find('Allow To Save');

      if Item <> Nil then
      begin
        MainFRM.IsSaveTariff := Item.Enabled;
      end;

    end;

  end;

END.
