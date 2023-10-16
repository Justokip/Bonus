page 50116  "Bonus Cues"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Bonus Cues";
    Caption= 'Activities';
    
    layout
    {
        area(Content)
        {
            cuegroup(GroupName)
            {
                //CuegroupLayout= wide;
                ShowCaption= true;

                field(Field1;Rec.Field1)
                {
                    ApplicationArea = All;
                    DrillDownPageId= "MNB Bonus Card";
                    
                    
                }
                field("Bonus Entries";Rec."Bonus Entries")
                {
                    ApplicationArea = All;
                    DrillDownPageId= "MNB Bonus Entry Page";

                }
                field("Bonus List";Rec."Bonus List")
                {
                    DrillDownPageId= "MNB Bonus List";
                  

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