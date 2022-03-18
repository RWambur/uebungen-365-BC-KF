/// <summary>
/// Page Fahrt (ID 50110).
/// </summary>
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
                    ApplicationArea = All;

                }
                field(Nummer; Nummer)
                {
                    ApplicationArea = All;
                    Editable = false;

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
                field("KM Fahrtbeginn"; "KM Fahrtbeginn")
                {
                    ApplicationArea = All;

                }
                field("KM Fahrtende"; "KM Fahrtende")
                {
                    ApplicationArea = All;

                }
                field("Gefahrene KM"; "Gefahrene KM")
                {
                    ApplicationArea = All;

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