table 50111 "MNB Bonus Header"
{
    //DataClassification = CustomerContent;
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
        field(6; Series; Code[20])
        {

        }
    }

    keys
    {
        key(PK; "NO.")
        {
            Clustered = true;
        }
    }
    var
        NumberSeriesMgt: Codeunit NoSeriesManagement;
        SalesSetUpMtg: Record "MNB Bonus Setup";

    trigger OnInsert()
    begin
        SalesSetUpMtg.Get();
        if "NO." = '' then
            NumberSeriesMgt.InitSeries(SalesSetUpMtg."Bonus Nos.", xRec.Series, 0D, "NO.", Series);
    end;

}