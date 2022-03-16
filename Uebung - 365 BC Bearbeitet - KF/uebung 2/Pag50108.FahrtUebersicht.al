page 50108 FahrtUebersicht
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
                    Application = All;

                }
                field(Nummer; Nummer)
                {
                    Application = All;

                }
                field(Fahrzeug; Fahrzeug)
                {
                    Application = All;

                }
                field(Fahrtbeginn;; Fahrtbeginn)
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
                field(Gefahrene KM; Gefahrene KM)
                {
                    Application = All;

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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}