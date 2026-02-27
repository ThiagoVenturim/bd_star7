program SystenGS7;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {uPrincipal},
  uConsulta in 'uConsulta.pas' {FConsulta},
  uDMConsulta in 'uDMConsulta.pas' {DataModule1: TDataModule},
  uCadCliente in 'uCadCliente.pas' {CadCliente},
  uCadFrame in 'uCadFrame.pas' {Frame2: TFrame},
  uCadAtendimento in 'uCadAtendimento.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuPrincipal, uPrincipal);
  Application.CreateForm(TFConsulta, FConsulta);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TCadCliente, CadCliente);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
