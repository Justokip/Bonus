table 50114 "Bonus Cues" 
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;Field1; Integer)
        {
            DataClassification = ToBeClassified;
            Caption='Bonus Card ';
            
        }
        field(2; "Bonus Entries"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Bonus List"; Blob)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Pk; Field1)
        {
            Clustered = true;
        }
    }
    
}