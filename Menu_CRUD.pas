unit Menu_CRUD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if edit1.Text ='' then
begin
messageDlg('kode barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
if edit2.Text ='' then
begin
messageDlg('nama barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
if edit3.Text ='' then
begin
messageDlg('harga barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
if edit4.Text ='' then
begin
messageDlg('jumlah barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
begin
ZQuery1.Append ;
ZQuery1.FieldByName('kd_barang').AsInteger :=Strtoint(edit1.Text);
ZQuery1.FieldByName('nm_barang').ASstring := edit2.Text;
ZQuery1.FieldByName('hrg_barang').AsInteger :=Strtoint(edit3.Text);
ZQuery1.FieldByName('jml_barang').AsInteger :=Strtoint(edit4.Text);
ZQuery1.Post;
edit1.Text :='';
edit2.Text :='';
edit3.Text :='';
edit4.Text :='';
edit1.SetFocus ;
end;



end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if edit1.Text ='' then
begin
messageDlg('kode barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
if edit2.Text ='' then
begin
messageDlg('nama barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
if edit3.Text ='' then
begin
messageDlg('harga barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
if edit4.Text ='' then
begin
messageDlg('jumlah barang tidak boleh kosong', MTInformation, [MBOK], 0);
edit1.SetFocus ;
end else
begin
ZQuery1.Edit ;
ZQuery1.FieldByName('kd_barang').AsInteger :=Strtoint(edit1.Text);
ZQuery1.FieldByName('nm_barang').ASstring := edit2.Text;
ZQuery1.FieldByName('hrg_barang').AsInteger :=Strtoint(edit3.Text);
ZQuery1.FieldByName('jml_barang').AsInteger :=Strtoint(edit4.Text);
ZQuery1.Post;
Showmessage('data berhasil diupdate');
edit1.Text :='';
edit2.Text :='';
edit3.Text :='';
edit4.Text :='';
edit1.SetFocus ;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 if ZQuery1.RecordCount <=0 then
 messageDlg('data tidak ada', MTWarning, [MBOK],0) else
 ZQuery1.Delete ;
 end;

end.
