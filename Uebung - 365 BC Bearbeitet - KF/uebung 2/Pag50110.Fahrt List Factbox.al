page 50110 Fahrt List Factbox
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
                field(Fahrtbeginn;; Fahrtbeginn)
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
            action(Karte)
            {
                ApplicationArea = All;
                RunObject = Page "Fahrt Liste";
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