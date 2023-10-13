page 50113 "MNB Bonus Subform"
{
    PageType = ListPart;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = "MNB Bonus Line";
    Caption = 'Lines';

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the type of bonus assigned';


                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the item number for the bonus assigned';
                }
                field("Bonus Perc."; Rec."Bonus Perc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus percent';

                }
            }
        }

    }
}