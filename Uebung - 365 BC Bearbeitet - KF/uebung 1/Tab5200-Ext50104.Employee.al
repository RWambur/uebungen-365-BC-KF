/// <summary>
/// TableExtension Tab5200 (ID 50104) extends Record Employee.
/// </summary>
tableextension 50104 Tab5200 extends Employee
{
    fields
    {
        // Add changes to table fields here
        field(5000; "Führerschein"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Keinen","PKW","LKW";
        }
    }

    var
        myInt: Integer;
}