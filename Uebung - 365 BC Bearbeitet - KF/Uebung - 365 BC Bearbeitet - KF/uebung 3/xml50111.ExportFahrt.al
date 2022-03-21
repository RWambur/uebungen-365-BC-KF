/// <summary>
/// XmlPort ExportFahrt (ID 50111).
/// </summary>
xmlport 50111 ExportFahrt
{
    Format = xml;
    Direction = Export;

    schema
    {
        textelement(Fahrten)
        {
            tableelement(Fahrt; Fahrt)
            {
                fieldelement(Fahrer; Fahrt.Fahrer)
                {

                }
                fieldelement(Fahrzeug; Fahrt.Fahrzeug)
                {

                }
            }
        }
    }
}