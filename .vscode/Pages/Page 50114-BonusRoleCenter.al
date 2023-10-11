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

                action(Payment)

                {

                    RunObject = page "MNB Bonus List";

                    Image = Customer;

                    ApplicationArea = Basic, Suite;

                    Caption = 'Bonus List';

                }


            }
            group(Section3)

            {

                Caption = 'Report';

                action(Bonus1)

                {

                    RunObject = page "MNB Bonus List";

                    Image = Customer;

                    ApplicationArea = Basic, Suite;

                    Caption = 'Bonus List';

                }
                action(Bonus2)

                {

                    RunObject = page "MNB Bonus Subform";

                    Image = Customer;

                    ApplicationArea = Basic, Suite;

                    Caption = 'Bonus Subform';

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