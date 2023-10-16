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
            trigger OnValidate()
            var
                MNBBonusSetup: Record "MNB Bonus Setup";
                NoSeriesmgt: Codeunit NoSeriesManagement;
            begin
                if "NO." <> xRec."NO." then begin
                    MnbBonuSetup.Get();
                    MNBBonusSetup.TestField("Bonus Nos.");
                    NoSeriesmgt.TestManual(MNBBonusSetup."Bonus Nos.")
                end;

            end;

        }
        field(2; "Customer NO."; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Customer;
            Caption = 'Customer No.';
            trigger OnValidate()
            begin
                // TestStatusOpen();
                CalcFields("Customer Name");
            end;
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
        field(7; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));

        }
        field(8; "Bonus Amount"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Bonus Entry Table"."Bonus Amount" where("Bonus No." = field("NO.")));

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
        MnbBonuSetup: Record "MNB Bonus Setup";


    trigger OnInsert()
    begin
        if "NO." = '' then begin
            MnbBonuSetup.Get();
            MnbBonuSetup.TestField("Bonus Nos.");
            NumberSeriesMgt.InitSeries(MnbBonuSetup."Bonus Nos.", MnbBonuSetup."Bonus Nos.", WorkDate(), "NO.", MnbBonuSetup."Bonus Nos.");

        end;
    end;

}
