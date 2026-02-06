program SystenGS7;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {uPrincipal},
  uConsulta in 'uConsulta.pas' {FConsulta},
  uDMConsulta in 'uDMConsulta.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuPrincipal, uPrincipal);
  Application.CreateForm(TFConsulta, FConsulta);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
