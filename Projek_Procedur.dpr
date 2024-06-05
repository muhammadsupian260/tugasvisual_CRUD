program Projek_Procedur;

uses
  Forms,
  Menu_CRUD in 'Menu_CRUD.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
