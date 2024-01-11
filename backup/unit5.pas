unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBCtrls, DBGrids, ZConnection, ZDataSet, ZSqlUpdate, LR_Class, LR_DBSet, LR_DSet;

type
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
  reportFilePath: string;
begin
  reportFilePath := ExtractFilePath(Application.ExeName) + 'Untitled.lrf';

  frDBDataset1.DataSet := ZQuery1;
  frReport1.Dataset := frDBDataset1;

  if FileExists(reportFilePath) then
  begin
    frReport1.LoadFromFile(reportFilePath);
    frReport1.ShowReport;
  end
  else
    ShowMessage('Report file not found: ' + reportFilePath);
end;

procedure TForm5.ZConnection1AfterConnect(Sender: TObject);
begin
  // Add any specific actions that need to be performed after the connection is established.
end;

end.
