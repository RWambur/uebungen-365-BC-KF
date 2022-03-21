/// <summary>
/// Page Fahrt (ID 50110).
/// </summary>
page 50106 Fahrt
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Fahrt;
    Editable = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Fahrer; Fahrer)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        Employee: Record Employee;
                    begin
                        Employee.Get(Fahrer);
                        "Führerschein" := Employee."Führerschein";
                    end;

                }
                field(Nummer; Nummer)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Fahrzeug; Fahrzeug)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        KFZ: Record Fahrzeug;
                    begin
                        KFZ.Get(Fahrzeug);
                        KFZ.CalcFields(Kilometerstand);
                        "KMFahrtbeginn" := KFZ.Kilometerstand;
                    end;

                }
                field(Fahrtbeginn; Fahrtbeginn)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        FahrtenKFZ: Record Fahrt;
                    begin
                        FahrtenKFZ.SetRange(Fahrzeug, Fahrzeug);
                        if FahrtenKFZ.find('-') then
                            repeat
                                if Fahrtbeginn = FahrtenKFZ.Fahrtbeginn then
                                    Error('Die Fahrt wurde schon erfasst!');
                            until FahrtenKFZ.Next() = 0;
                    end;

                }
                field(Fahrtende; Fahrtende)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Fahrtbeginn > Fahrtende then
                            Error('Das Fahrtende liegt vor dem Fahrbeginn!');
                    end;
                }
                field(ZweckDerFahrt; ZweckDerFahrt)
                {
                    ApplicationArea = All;

                }
                field(KMFahrtbeginn; KMFahrtbeginn)
                {
                    ApplicationArea = All;

                }
                field(KMFahrtende; KMFahrtende)
                {
                    ApplicationArea = All;

                    trigger OnValidate()

                    begin
                        if "KMFahrtende" > "KMFahrtbeginn" then
                            "GefahreneKM" := "KMFahrtende" - "KMFahrtbeginn"
                        else
                            Error('Ungültige Eingabe');
                    end;

                }
                field(GefahreneKM; GefahreneKM)
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
            action("Exportieren als XML")
            {
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                begin
                    Xmlport.Run(50111, false, false);
                end;
            }
        }
    }

    var
        myInt: Integer;
}