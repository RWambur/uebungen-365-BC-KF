/// <summary>
/// Table Fahrzeug (ID 50101).
/// </summary>
table 50101 Fahrzeug
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Kennzeichen; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Typ; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Kombi","Transpoerter","LKW";
        }
        field(3; Kraftstoff; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Benzin","Diesel","Hybrid";
        }
        field(4; Hersteller; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(5; Modell; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(6; Kaufpreis; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(7; Kilometerstand; Decimal)
        {
            FieldClass = FlowField;

            DecimalPlaces = 1 : 1;
            CalcFormula = Sum(Fahrt."Gefahrene KM" WHERE(Fahrzeug = FIELD(Kennzeichen)));
        }
        field(8; Anängerkupplung; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(9; Kaufdatum; DateTime)
        {
            DataClassification = ToBeClassified;

        }
        field(10; Restbuchwert; Decimal)
        {
            FieldCalss = FlowField;
            ClacFormula = Min(Abschreibung.Restbuchwert WHERE (Fahrzeug = FIELD(Kennzeichen)));
            
        }
    }
    keys
    {
        key(PK, Kennzeichen, Typ)
        {
            Clustered = true;
        }
    }
}