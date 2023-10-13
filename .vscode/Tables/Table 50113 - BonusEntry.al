table 50113 "Bonus Entry Table"
{
    DataClassification = CustomerContent;
    Caption = 'Bonus Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Editable = false;


        }
        field(2; "Bonus No."; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "MNB Bonus Header";


        }
        field(3; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = "Sales Invoice Header";
        }
        field(4; "Item No."; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
            TableRelation = Item;
        }
        field(5; "Posting Date"; Date)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(6; "Bonus Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }

    }

    keys
    {
        key(pk; "Entry No.")
        {
            Clustered = true;
        }
    }


}