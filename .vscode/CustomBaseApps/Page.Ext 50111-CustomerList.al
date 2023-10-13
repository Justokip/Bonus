pageextension 50111 "Customer List Page Ext" extends "customer list"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field(MNBBonus; Rec.MNBBonus)
            {
                ApplicationArea = All;
                ToolTip = 'Shows number of assigned customers to bonuses';

            }
        }
    }

    actions
    {
        // Add changes to page actions here

        addlast(navigation)
        {
            action(MNBBonuses)
            {
                Caption = 'Bonuses';
                ApplicationArea = All;
                Image = Discount;
                RunObject = page "MNB Bonus List";
                RunPageLink = "Customer No." = field("No.");
            }
        }
    }
}
