/// <summary>
/// Page AbschreibenUebersicht (ID 50109).
/// </summary>
page 50109 AbschreibenListe
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Abschreibung;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Fahrzeug; Fahrzeug)
                {
                    ApplicationArea = All;

                }
                field(Jahr; Jahr)
                {
                    ApplicationArea = All;

                }
                field(Abschreibungssatz; Abschreibungssatz)
                {
                    ApplicationArea = All;

                }
                field(Abschreibungsbetrag; Abschreibungsbetrag)
                {
                    ApplicationArea = All;
                }


                field(Restbuchwert; Restbuchwert)
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}