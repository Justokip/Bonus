page 50114 "Bonus Role Center"

{
    Caption = 'RoleCenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            group(group1)
            {
                part(headline; "Headline RC Administrator")
                {
                    ApplicationArea = Basic, suite;
                }
                part(Bonus; "Bonus Cues")
                {
                    ApplicationArea = Basic, suite;
                }
            }
            group(groupRole)
            {

            }

        }
    }
    actions
    {
        area(Sections)
        {
            group(Section2)
            {
                Caption = 'Bonus';
                action(p)
                {
                    RunObject = page "MNB Bonus List";
                    Image = Customer;
                    ApplicationArea = Basic, Suite;
                    Caption = 'Bonus List';
                }
                action(pp)
                {
                    RunObject = page "MNB Bonus Entry Page";
                    //Image = Customer;
                    ApplicationArea = Basic, Suite;
                    Caption = 'Bonus Entries';
                }

            }
            group(Section3)
            {
                Caption = 'Bonus Setup';
                action(Bonus1)
                {
                    RunObject = page "MNB Bonus Setup";
                    Image = Customer;
                    ApplicationArea = Basic, Suite;
                    Caption = 'Bonus Setup';
                }
            }
            group(Section4)
            {
                Caption = 'Report';
                action(report)
                {
                    RunObject = report "MNB Bonus Overview Report";
                    ApplicationArea = Basic, Suite;
                    Caption = 'Report';
                }
            }
        }
    }
}
profile Bonus
{
    ProfileDescription = 'Bonus';
    RoleCenter = "Bonus Role Center";
    Caption = 'Bonus';

}