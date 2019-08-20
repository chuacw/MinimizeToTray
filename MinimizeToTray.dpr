program MinimizeToTray;

uses
  Vcl.Forms,
  MinimizeToTray.MainForm in 'MinimizeToTray.MainForm.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Minimize To Tray';
  Application.CreateForm(TForm4, Form4);
  Application.MainFormOnTaskbar := False;
  Application.Run;
end.
