unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  ZDataset;

type

  { TForm4 }

  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    ZQuery1: TZQuery;
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

end.

