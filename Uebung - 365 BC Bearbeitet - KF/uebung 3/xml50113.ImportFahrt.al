/// <summary>
/// XmlPort ImportFahrt(ID 50113).
/// </summary>
xmlport 50113 ImportFahrt
{
    Format = xml;
    Direction = Import;

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
                fieldelement(Fahrtbeginn; Fahrt.Fahrtbeginn)
                {

                }
                fieldelement(Fahrtende; Fahrt.Fahrtende)
                {

                }
                fieldelement(ZweckDerFahrt; Fahrt.ZweckDerFahrt)
                {

                }
                fieldelement(KMFahrtbeginn; Fahrt.KMFahrtbeginn)
                {

                }
                fieldelement(KMFahrtende; Fahrt.KMFahrtende)
                {

                }
                fieldelement(GefahreneKM; Fahrt.GefahreneKM)
                {

                }
            }
        }
    }
}