/// <summary>
/// Table Fahrt (ID 50102).
/// </summary>
table 50102 Fahrt
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Fahrer; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee."No." where("Führerschein" = filter(PKW | LKW)); //Innerhalb des Servers
        }
        field(2; Nummer; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(3; Fahrzeug; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Fahrzeug.Kennzeichen;
        }
        field(4; Fahrtbeginn; DateTime)
        {
            DataClassification = ToBeClassified;

        }
        field(5; Fahrtende; DateTime)
        {
            DataClassification = ToBeClassified;

        }
        field(6; ZweckDerFahrt; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(7; KMFahrtbeginn; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;
        }
        field(8; KMFahrtende; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;
        }
        field(9; GefahreneKM; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 1;
        }
        field(10; Führerschein; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Keinen","PKW","LKW";

            TableRelation = IF ("Führerschein" = CONST(PKW)) Fahrzeug.Kennzeichen WHERE(Typ = Filter(Kombi | Transporter))
            ELSE
            Fahrzeug.Kennzeichen;
        }
    }
    keys
    {
        key(PK; Fahrer, Nummer)
        {
            Clustered = true;
            SumIndexFields = GefahreneKM;
        }
    }
}