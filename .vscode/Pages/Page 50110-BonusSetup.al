page 50110 "MNB Bonus Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Setup";
    Caption = 'Bonus Setup';
    DeleteAllowed = false;
    InsertAllowed = false;
    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Bonus Nos."; Rec."Bonus Nos.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies number series what will be used for bonus numbers.';
                }
            }
        }
    }
  trigger OnOpenPage()
  begin
    Rec.Reset();
    if not Rec.Get() then begin
        Rec.Init();
        Rec.Insert();

    end;
    
  end;
   
}
 