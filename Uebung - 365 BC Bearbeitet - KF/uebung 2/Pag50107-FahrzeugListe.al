page 50107 FahrzeugListe
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Fahrzeug;
    Editable = false;
    SourceTableView = sorting(Fahrtbeginn) order(ascending);

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field(Kilometerstand; Kilometerstand)
                {
                    Application = All;

                }
            }
        }
        area(Factboxes)
        {
            part(Fahrtlistfactbox; "Fahrt List Factbox")
            {
                SubPageView = sorting(Fahrtbeginn) order(descending);
                SubPageLink = Fahrzeug = field(Kennzeichen);
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Karte)
            {
                ApplicationArea = All;
                RunObject = page Fahrzeug;
                RunPageLink = Kennzeichen = field(Kennzeichen);
                Promoted = true;
                PromotedCategory = true;
                PromotedIsBig = true;
                Image = AnalysisView;
                trigger OnAction();
                begin

                end;
            }
        }
    }
}