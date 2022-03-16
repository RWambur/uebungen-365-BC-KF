tableextension 50104 Tab5200 extends Employee
{
    fields
    {
        // Add changes to table fields here
        field(5000; "Führerschein"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Keinen", "PWK", "LKW";
        }
    }
    
    var
        myInt: Integer;
}