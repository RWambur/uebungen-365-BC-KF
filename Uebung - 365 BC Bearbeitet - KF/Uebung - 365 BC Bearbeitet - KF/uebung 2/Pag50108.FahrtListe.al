/// <summary>
/// Page FahrtUebersicht (ID 50108).
/// </summary>
page 50108 FahrtListe
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Fahrt;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Fahrer; Fahrer)
                {
                    ApplicationArea = All;

                }
                field(Nummer; Nummer)
                {
                    ApplicationArea = All;

                }
                field(Fahrzeug; Fahrzeug)
                {
                    ApplicationArea = All;

                }
                field(Fahrtbeginn; Fahrtbeginn)
                {
                    ApplicationArea = All;

                }
                field(Fahrtende; Fahrtende)
                {
                    ApplicationArea = All;

                }
                field(ZweckDerFahrt; ZweckDerFahrt)
                {
                    ApplicationArea = All;

                }
                field(GefahreneKM; GefahreneKM)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Fahrt importieren")
            {
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                begin
                    Xmlport.Run(50112, false, true);
                end;
            }
        }
    }
}