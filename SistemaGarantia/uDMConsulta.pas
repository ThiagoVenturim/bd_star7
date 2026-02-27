unit uDMConsulta;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Data.FMTBcd,
  Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
