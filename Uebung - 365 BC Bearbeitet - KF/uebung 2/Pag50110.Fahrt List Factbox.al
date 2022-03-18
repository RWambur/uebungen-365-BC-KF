/// <summary>
/// Page Fahrt (ID 50106).
/// </summary>
page 50110 "Fahrt List Factbox"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrt;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Fahrtbeginn; Fahrtbeginn)
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
            action(Karte)
            {
                ApplicationArea = All;
                RunObject = Page "FahrtListe";
                RunPageLink = Nummer = field(Nummer);
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = AnalysisView;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}