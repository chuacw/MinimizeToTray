unit MinimizeToTray.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.ExtCtrls, Vcl.StdCtrls, System.Actions, Vcl.ActnList,
  Vcl.StdActns, Vcl.Menus;

type
  TfrmMinimizeToTray = class(TForm)
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    Exit1: TMenuItem;
    acExit: TAction;
    Action1: TAction;
    Timer1: TTimer;
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMinimizeToTray: TfrmMinimizeToTray;

implementation

{$R *.dfm}

procedure TfrmMinimizeToTray.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMinimizeToTray.ApplicationEvents1Minimize(Sender: TObject);
begin
  Hide;
  Application.MainFormOnTaskBar := False;

  { Show the animated tray icon and also a hint balloon. }
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;

end;


procedure TfrmMinimizeToTray.TrayIcon1DblClick(Sender: TObject);
begin

  TrayIcon1.Visible := False;
  Application.Restore;
  Show;
  Application.BringToFront;

end;

end.















































































































































































{
https://github.com/chuacw
chuacw, Singapore
22 Aug 2019
}
