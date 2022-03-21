report 50116 Fahrtenliste
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRDLReport02.rdl';

    dataset
    {
        dataitem(FahrtenlisteA; Fahrzeug)
        {
            column(Kennzeichen; Kennzeichen)
            {

            }
            column(Typ; Typ)
            {

            }
            column(Hersteller; Hersteller)
            {

            }
            column(Modell; Modell)
            {

            }
            column(Kaufpreis; Kaufpreis)
            {

            }
            column(Kraftstoff; Kraftstoff)
            {

            }
            column(Kilometerstand; Kilometerstand)
            {

            }
            column("Anhängerkupplung"; "Anhängerkupplung")
            {

            }
            column(Kaufdatum; Kaufdatum)
            {

            }
            column(Restbuchwert; Restbuchwert)
            {

            }

        }
        dataitem(FahrtenlisteB; Fahrt)
        {
            DataItemLinkReference = Fahrzeug;
            DataItemLink = Fahrzeug = field(Kennzeichen);

            column(Fahrer; Fahrer)
            {

            }
            column(Nummer; Nummer)
            {

            }
            column(KFZ; Fahrzeug)
            {

            }
            column(Fahrtbeginn; Fahrtbeginn)
            {

            }
            column(Fahrtende; Fahrtende)
            {

            }
            column(ZweckDerFahrt; ZweckDerFahrt)
            {

            }
            column(KMFahrtbeginn; KMFahrtbeginn)
            {

            }
            column(KMFahrtende; KMFahrtende)
            {

            }
            column(GefahreneKM; GefahreneKM)
            {

            }
            column("Führerschein"; "Führerschein")
            {

            }
        }
        dataitem(FahrtenlisteC; Employee)
        {
            DataItemLinkReference = Fahrt;
            DataItemLink = "No." = field(Fahrer);

            column(First_Name; "First Name")
            {

            }
            column(Last_Name; "Last Name")
            {

            }
        }
    }

    var
        myInt: Integer;
}