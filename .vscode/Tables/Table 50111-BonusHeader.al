table 50111 "MNB Bonus Header"
{
    DataClassification = CustomerContent;
    Caption = 'Bonus';
    DrillDownPageId = "MNB Bonus List";
    LookupPageId = "MNB Bonus List";

    fields
    {
        field(1; "NO."; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

        }
        field(2; "Customer NO."; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Customer;
            Caption = 'Customer No.';
        }
        field(3; "Starting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Start date';
        }
        field(4; "Ending Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Ending date';
        }
        field(5; "Status"; Enum "MNB Bonus Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Status';
        }
    }

    keys
    {
        key(PK; "NO.")
        {
            Clustered = true;
        }
    }



}