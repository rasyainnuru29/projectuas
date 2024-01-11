Unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBCtrls, DBGrids, ZConnection, ZDataSet, ZSqlUpdate, LR_Class, LR_DBSet, LR_DSet;

type
  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    frDBDataset1: TfrDBDataset;
    frReport1: TfrReport;
    Label1: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure ZConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
var
  s: string;
begin
  s := ExtractFilePath(Application.ExeName) + 'Untitled.lrf';
  frDBDataset1.DataSet := ZQuery1;
  frReport1.Dataset := frDBDataset1;
  frReport1.LoadFromFile(s);
  frReport1.ShowReport;
end;

procedure TForm5.frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

procedure TForm5.ZConnection1AfterConnect(Sender: TObject);
begin
  // You can add any specific actions that need to be performed after the connection is established.
end;

end.
