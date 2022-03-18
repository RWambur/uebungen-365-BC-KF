/// <summary>
/// Table Abschreibung (ID 50103).
/// </summary>
table 50103 Abschreibung
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Fahrzeuge; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Fahrzeug.Kennzeichen;
        }
        field(2; Jahr; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(3; Abschreibungssatz; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; Abschreibungsbetrag; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(5; Restbuchwert; Decimal)
        {
            DataClassification = ToBeClassified;

        }
    }
    keys
    {
        key(Fahrzeug; Jahr)
        {
            Clustered = true;
        }
    }

}