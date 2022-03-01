using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updateEditedRecord : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        string dbName = "db.mdf";
        string cID = (string)Session["ID"];
        string clname = Request["lname"];
        string cfname = Request["fname"];
        string cpassword = Request["password"];
        string cemail = Request["mail"];
        string cphonenumber = Request["phonenumber"];
        string cgender = Request["gender"];
        string cyear = Request["year"];
        string cmounth = Request["mounth"];
        string cday = Request["day"];
        string cstreet = Request["street"];
        string chousenumber = Request["housenumber"];
        string czipcode = Request["zipcode"];
        string ccity = Request["city"];
        string cspecial = Request["special"];
        string selectQuery = "";
        string updateQuery = "";

        if (Request["submit"] != null)
        {
            selectQuery = "SELECT * FROM myUsers WHERE myID = '" + cID + "'";

            updateQuery = "UPDATE myUsers SET myFirstName = N'" + cfname
                + "', myLastName = N'" + clname
                + "', myPassword = N'" + cpassword
                + "', myEmail = '" + cemail
                + "', myPhoneNumber = '" + cphonenumber
                + "', myGender = '" + cgender
                + "', myYear = '" + cyear
                + "', myMounth = '" + cmounth
                + "', myDay = '" + cday
                + "', myStreet = N'" + cstreet
                + "', myHouseNumber = '" + chousenumber
                + "', myZipcode = '" + czipcode
                + "', myCity = N'" + ccity
                + "', mySpecial = N'" + cspecial
                + "' WHERE myID ='" + cID + "'";

            if (MyAdoHelper.IsExist(dbName, selectQuery))
            {
                MyAdoHelper.DoQuery(dbName, updateQuery);
            }
            Session["name"] = cfname;
            Session["msg1"] = "עודכן בהצלחה";
            Response.Redirect("update.aspx");
        }
    }
}