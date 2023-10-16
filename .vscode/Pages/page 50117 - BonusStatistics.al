page 50117 "Bonus Statistics Page"
{
    PageType = CardPart;    
    SourceTable = "MNB Bonus Header";
    Caption='Bonus Statistics';
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("NO.";Rec."NO.")
                {
                    ApplicationArea = All;
                    ToolTip='Spesifies the Bonus Number';
                    
                }
                field("Bonus Amount";Rec."Bonus Amount")
                {
                    ApplicationArea= All;
                    ToolTip='Specifies the Bonus Total Amount ';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}