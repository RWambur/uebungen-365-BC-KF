/// <summary>
/// Page FahrzeugListe (ID 50107).
/// </summary>
page 50107 FahrzeugListe
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Fahrzeug;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field(Kilometerstand; Kilometerstand)
                {
                    ApplicationArea = All;

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
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = AnalysisView;
                trigger OnAction();
                begin

                end;
            }
            action("Fahrzeuge importieren")
            {
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                begin
                    Xmlport.Run(50112, false, true);
                end;
            }
            action("Restbruchwert berechnen")
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CashReceiptJournal;

                trigger OnAction()
                begin
                    case "AfaMethode" of
                        "AfaMethode"::linear:
                            Afa.linear(Kennzeichen);
                        "AfaMethode"::degressiv:
                            Afa.Degressiv(Kennzeichen);
                        "AfaMethode"::kombiniert:
                            Afa.Kombiniert(Kennzeichen);
                        "AfaMethode"::leistungsabh:
                            Afa."Leistungsabhängig"(Kennzeichen); //??

                    end;
                end;
            }
        }
    }
}