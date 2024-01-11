unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  CorrectUsername: string = 'suki'; // Ganti dengan nama pengguna yang benar
  CorrectPassword: string = 'pantai'; // Ganti dengan kata sandi yang benar

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = CorrectUsername) and (Edit2.Text = CorrectPassword) then
    begin
      Label1.Caption := 'Login Berhasil';

      // Buka form menu aplikasi (Form2)
      Form2.Show;
      Form1.Hide;
    end
    else
      Label1.Caption := 'Login Gagal';
  end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label1.Caption := '';
  Edit2.PasswordChar := '*'; // Menyembunyikan karakter-karakter kata sandi
end;

end.

