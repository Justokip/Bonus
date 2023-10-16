report 50110 "MNB Bonus Overview Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Bonus Overview';
    WordLayout = '.vscode\Reports\Report 50111 - BonusOverviewReport.docx';
    DefaultLayout = Word;

    //DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(DataItemName; "MNB Bonus Header")
        {
            RequestFilterFields = "NO.", "Customer NO.";
            column(NO_; "NO.")
            {

            }
            column(Customer_NO_; "Customer NO.")
            {

            }
            column(Starting_Date; "Starting Date")
            {

            }
            column(Ending_Date; "Ending Date")
            {

            }
            column(BonusNoCaptionLbl; BonusNoCaptionLbl)
            {
            }
            column(CustomerNoCaptionLbl; CustomerNoCaptionLbl)
            {
            }
            column(PostingDateCaptionLbl; PostingDateCaptionLbl)
            {
            }
            column(DocumentNoCaptionLbl; DocumentNoCaptionLbl)
            {
            }
            column(BonusAmountCaptionLbl; BonusAmountCaptionLbl)
            {
            }
            column(ItemNoCaptionLbl; ItemNoCaptionLbl)
            {
            }
            column(StartingDateCaptionLbl; StartingDateCaptionLbl)
            {
            }
            column(EndingDateCaptionLbl; EndingDateCaptionLbl)
            {
            }
            column(Logo; company.Picture)
            {

            }
            column(address; company.Name)
            {

            }
            column(City; company.City)
            {

            }
            column(Email; company."E-Mail")
            {

            }
            column(AmountSum; AmountSum)
            {

            }
            dataitem(EntryTable; "Bonus Entry Table")
            {
                //DataItemLink = "Bonus No." = field("No.");
                RequestFilterFields = "Posting Date";
                column(Document_No_; "Document No.")
                {

                }
                column(Item_No_; "Item No.")
                {

                }
                column(Posting_Date; "Posting Date")
                {

                }
                column(Bonus_Amount; "Bonus Amount")
                {


                }
            }
            trigger OnAfterGetRecord()
            var

                MNBBonusEntry: Record "Bonus Entry Table";
            begin
                MNBBonusEntry.CopyFilters("MNBBonusEntry");
                MNBBonusEntry.SetRange("Bonus No.", "No.");
                MNBBonusEntry.CalcSums("Bonus Amount");
                AmountSum := MNBBonusEntry."Bonus Amount";
            end;
        }

    }

    var
        BonusNoCaptionLbl: Label 'Bonus No.';
        CustomerNoCaptionLbl: Label 'Customer No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        DocumentNoCaptionLbl: Label 'Document No.';
        BonusAmountCaptionLbl: Label 'Amount';
        ItemNoCaptionLbl: Label 'Item No.';
        StartingDateCaptionLbl: Label 'Starting Date';
        EndingDateCaptionLbl: Label 'Ending Date';
        AmountSum: Decimal;

    var
        Company: Record "Company Information";

    trigger OnPreReport()

    begin
        Company.Get();
        Company.CalcFields(Picture);
    end;


}
