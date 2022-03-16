page 50106 Fahrt
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrt;
    Editable = false;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Fahrer; Fahrer)
                {
                    Application = All;

                }
                field(Nummer; Nummer)
                {
                    Application = All;
                    Editable = false;

                }
                field(Fahrzeug; Fahrzeug)
                {
                    Application = All;

                }
                field(Fahrtbeginn; Fahrtbeginn)
                {
                    Application = All;

                }
                field(Fahrtende; Fahrtende)
                {
                    Application = All;

                }
                field(Zweck der Fahrt;
                    Zweck der Fahrt)
                {
                    Application = All;

                }
                field(KM Fahrtbeginn; KM Fahrtbeginn)
                {
                    Application = All;

                }
                field(KM Fahrtende; KM Fahrtende)
                {
                    Application = All;

                }
                field(Gefahrene KM; Gefahrene KM)
                {
                    Application = All;

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