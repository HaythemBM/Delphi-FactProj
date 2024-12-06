program FactProj;

uses
  Forms,
  FactRes in 'FactRes.pas' {FactForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFactForm, FactForm);
  Application.Run;
end.
