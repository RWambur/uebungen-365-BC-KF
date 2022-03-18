/// <summary>
/// XmlPort ImportFahrzeug (ID 50112).
/// </summary>
xmlport 50112 ImportFahrzeug
{
    Format = xml;
    Direction = Import;

    schema
    {
        textelement(Fahrzeuge)
        {
            tableelement(Fahrzeug; Fahrzeug)
            {
                fieldelement(Kennzeichen; Fahrzeug.Kennzeichen)
                {

                }
                fieldelement(Typ; Fahrzeug.Typ)
                {

                }
                fieldelement(Typ; Fahrzeug.Typ)
                {

                }
                fieldelement(Kraftstoff; Fahrzeug.Kraftstoff)
                {

                }
                fieldelement(Hersteller; Fahrzeug.Hersteller)
                {

                }
                fieldelement(Modell; Fahrzeug.Modell)
                {

                }
                fieldelement(Kaufpreis; Fahrzeug.Kaufpreis)
                {

                }
                fieldelement(Kilometerstand; Fahrzeug.Kilometerstand)
                {

                }
                fieldelement(Anhängerkupplung; Fahrzeug.Anhängerkupplung)
                {

                }
                fieldelement(Kaufdatum; Fahrzeug.Kaufdatum)
                {

                }
                fieldelement(Restbuchwert; Fahrzeug.Restbuchwert)
                {

                }
            }
        }
    }
}