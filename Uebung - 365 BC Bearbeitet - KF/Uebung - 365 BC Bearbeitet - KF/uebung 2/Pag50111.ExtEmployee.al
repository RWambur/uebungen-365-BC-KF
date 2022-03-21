/// <summary>
/// PageExtension ExtEmployee (ID 50111) extends Record Employee Card.
/// </summary>
pageextension 50111 ExtEmployee extends "Employee Card" //Innerhalb des Servers
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