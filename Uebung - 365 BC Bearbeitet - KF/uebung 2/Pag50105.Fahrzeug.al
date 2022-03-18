/// <summary>
/// Page Fahrzeug (ID 50105).
/// </summary>
page 50105 Fahrzeug
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrzeug;

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field(Kennzeichen; Kennzeichen)
                {
                    ApplicationArea = All;

                }
                field(Typ; Typ)
                {
                    ApplicationArea = All;

                }
                field(Hersteller; Hersteller)
                {
                    ApplicationArea = All;

                }
                field(Modell; Modell)
                {
                    ApplicationArea = All;

                }
                field(Kraftstoff; Kraftstoff)
                {
                    ApplicationArea = All;

                }
                field(Kilometerstand; Kilometerstand)
                {
                    ApplicationArea = All;
                    Editable = false;
                    DrillDownPageId = "Fahrt Liste";

                }
                field(Anhängerkupplung; Anhängerkupplung)
                {
                    ApplicationArea = All;

                }
            }
            group(Abschreibung)
            {
                field(Kaufpreis; Kaufpreis)
                {
                    ApplicationArea = All;

                }
                field(Kaufdatum; Kaufdatum)
                {
                    ApplicationArea = All;

                }
                field(Restbuchwert; Restbuchwert)
                {
                    ApplicationArea = All;
                    DrillDownPageId = "Abschreibung Liste";
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}