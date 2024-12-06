unit FactRes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  ArrayInt = TArray<string>;

  // Factorial class declaration
  TFactorial = class
  private
    FInputValue: Integer;
  public
    constructor Create(AInput: Integer);
    function Factorial(AInput: integer): int64;
  end;

  // Form class declaration
  TFactForm = class(TForm)
    FactResultsGrid: TStringGrid;
    FormTitle: TLabel;
    ValueInput: TEdit;
    GenerateFactButton: TButton;
    procedure InitializeGrid();
    procedure FormCreate(Sender: TObject);
    procedure GenerateFactButtonClick(Sender: TObject);

  private
    FactorialsCalculator: TFactorial;
    function FetchData: Integer;
    procedure DisplayFactorialResults(Number: Integer);
  public
    procedure setFactorialCalculatorInput(AInput: Integer);
  end;

var
  FactForm: TFactForm;

implementation

{$R *.dfm}

// Factorial class implementations
constructor TFactorial.Create(AInput: Integer);
begin
  FInputValue := AInput;
end;

function TFactorial.Factorial(AInput: integer): int64;
var
  I: integer;
  Factorial: int64;
begin
  if AInput = 0 then
  begin
    Result := 1;
    Exit;
  end;

  Factorial := 1;
  for I := 1 to AInput do
    Factorial := Factorial * I;

  Result := Factorial;
end;

// Form class implementations
procedure TFactForm.InitializeGrid();
begin
  FactResultsGrid.RowCount := 2;
  FactResultsGrid.ColCount := 2;
  FactResultsGrid.Cells[0, 0] := 'Iteration';
  FactResultsGrid.Cells[1, 0] := 'Factorial';
end;

procedure TFactForm.FormCreate(Sender: TObject);
begin
  FactorialsCalculator := TFactorial.Create(0);
  self.InitializeGrid();
end;

procedure TFactForm.setFactorialCalculatorInput(AInput: Integer);
begin
  self.FactorialsCalculator.FInputValue := AInput;
end;

function TFactForm.FetchData(): Integer;
var
  Number: Integer;
begin
  if not TryStrToInt(ValueInput.Text, Number) then
    raise Exception.Create('Invalid number !!');
  if Number < 0 then
    raise Exception.Create('Factorial is not defined for negative numbers.');

  self.setFactorialCalculatorInput(Number);
  Result := Number;
end;

procedure TFactForm.DisplayFactorialResults(Number: Integer);
var
  I: Integer;
begin
  FactResultsGrid.RowCount := Number + 2;
  for I := 1 to Number + 1 do
  begin
    FactResultsGrid.Cells[0, I] := IntToStr(I-1);
    FactResultsGrid.Cells[1, I] := IntToStr(FactorialsCalculator.Factorial(I-1));
  end;
end;

procedure TFactForm.GenerateFactButtonClick(Sender: TObject);
var
  Number: Integer;
begin
  try
    Number := FetchData();
    DisplayFactorialResults(Number);
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;
end.
