tableextension 50110 MNBCustomer extends Customer
{
    fields
    {
        field(50100; "MNBBonus"; Integer)
        {
            Caption = 'Bonus Points';
            FieldClass = FlowField;
            CalcFormula = count("MNB Bonus Header" where("Customer NO." = field("No.")));
            Editable = false;
        }
    }
    // Add changes to table fields here


    var
        BonusExistsError: label 'You cannot delete customer %1 because there is atleast one bonus assigned';
        trigger OnBeforeDelete()
        var
        MNBBonusHeader: Record "MNB Bonus Header";
        begin
            MNBBonusHeader.SetRange("Customer NO.","No.");
            if not MNBBonusHeader.IsEmpty()then
            Error(BonusExistsError);
        end;

}