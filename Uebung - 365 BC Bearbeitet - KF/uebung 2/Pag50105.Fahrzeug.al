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
                    DrillDownPageId = "FahrtListe";

                }
                field("Anhängerkupplung"; "Anhängerkupplung")
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
                field(AfaMethode; AfaMethode)
                {
                    ApplicationArea = All;
                }
                field(Restbuchwert; Restbuchwert)
                {
                    ApplicationArea = All;
                    DrillDownPageId = "AbschreibenListe";
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Fahrzeuge importieren")
            {
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                begin
                    Xmlport.Run(50112, false, true)
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
                            Afa.Linear(Kennzeichen);
                        "AfaMethode"::degressiv:
                            Afa.Degressiv(Kennzeichen);
                        "AfaMethode"::kombiniert:
                            Afa.Kombiniert(Kennzeichen);
                        "AfaMethode"::leistungsabh:
                            Afa."Leistungsabhängig"(Kennzeichen);
                    end;
                end;
            }
        }
    }

    var
        "AfaMethode": Option linear,degressiv,kombiniert,leistungsabh;
        AFA: Codeunit Afa;
}