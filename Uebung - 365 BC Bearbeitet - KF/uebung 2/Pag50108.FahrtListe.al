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
                field("Zweck der Fahrt"; "Zweck der Fahrt")
                {
                    ApplicationArea = All;

                }
                field("Gefahrene KM"; "Gefahrene KM")
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