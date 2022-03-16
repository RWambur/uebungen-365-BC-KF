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
                    Application = All;

                }
                field(Typ; Typ)
                {
                    Application = All;

                }
                field(Hersteller; Hersteller)
                {
                    Application = All;

                }
                field(Modell; Modell)
                {
                    Application = All;

                }
                field(Kraftstoff; Kraftstoff)
                {
                    Application = All;

                }
                field(Kilometerstand; Kilometerstand)
                {
                    Application = All;
                    Editable = false;
                    DrillDownPageId = "Fahrt Liste";

                }
                field(Anhängerkupplung; Anhängerkupplung)
                {
                    Application = All;

                }
            }
            group(Abschreibung)
            {
                field(Kaufpreis; Kaufpreis)
                {
                    Aplication = All;

                }
                field(Kaufdatum; Kaufdatum)
                {
                    Application = All;

                }
                field(Restbuchwert; Restubuchwert)
                {
                    Application = All;
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