program Projeto_crud;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  crud_funcionario in '..\Unit\crud_funcionario.pas' {menu_funcionarios},
  dm_conexao_BD in '..\Unit\dm_conexao_BD.pas' {dm_funcionarios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(Tdm_funcionarios, dm_funcionarios);
  Application.CreateForm(Tmenu_funcionarios, menu_funcionarios);
  Application.Run;
end.
