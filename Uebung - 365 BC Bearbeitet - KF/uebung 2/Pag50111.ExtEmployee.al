pageextension 50111 ExtEmployee extends "Employee Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Company E-Mail")
        {
            field("Führerschein"; "Führerschein")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}