page 50109 AbschreibenUebersicht
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
                    Application = All;

                }
                field(Jahr; Jahr)
                {
                    Application = All;

                }
                field(Abschreibungssatz; Abschreibungssatz)
                {
                    Application = All;

                }
                field(Abschreibungsbetrag; Abschreibungsbetrag)
                {
                    Application = All;
                }

            }
            field(Restbuchwert; Restbuchwert)
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