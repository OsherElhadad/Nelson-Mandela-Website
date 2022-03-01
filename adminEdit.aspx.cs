using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMINEDIT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string databaseName = "db.mdf";
        string cID = Request["ID"];
        string cfname = Request["fname"];
        string clname = Request["lname"];
        string cpassword = Request["password"];
        string cphone = Request["phone"];
        string cemail = Request["email"];
        string cgender = Request["gender"];
        string cyear = Request["year"];
        string cmounth = Request["mounth"];
        string cday = Request["day"];
        string cstreet = Request["street"];
        string chousenumber = Request["housenumber"];
        string czipcode = Request["zipcode"];
        string ccity = Request["city"];
        string cspecial = Request["special"];
        string cmanager = Request["manager"];
        string selectQuery = "";
        string updateQuery = "";
        string deleteQuery = "";


        if (Request["updateUser"] != null)
        {
            selectQuery = "SELECT * FROM myUsers WHERE myID = '" + cID + "'";

            updateQuery = "UPDATE myUsers"
                + " SET myFirstName = N'" + cfname
                + "', myLastName = N'" + clname
                + "', myPassword = N'" + cpassword
                + "', myPhoneNumber = '" + cphone
                + "', myEmail = '" + cemail
                + "', myGender = '" + cgender
                + "', myYear = '" + cyear
                + "', myMounth = '" + cmounth
                + "', myDay = '" + cday
                + "', myStreet = N'" + cstreet
                + "', myHouseNumber = '" + chousenumber
                + "', myZipcode = '" + czipcode
                + "', myCity = N'" + ccity
                + "', mySpecial = N'" + cspecial
                + "', myManager = '" + cmanager
                + "' WHERE myID ='" + cID + "'";

            if (MyAdoHelper.IsExist(databaseName, selectQuery))
                MyAdoHelper.DoQuery(databaseName, updateQuery);
        }
        else
            if (Request["deleteUser"] != null)
            {
                deleteQuery = "DELETE FROM myUsers WHERE myID = '" + cID + "'";
                MyAdoHelper.DoQuery(databaseName, deleteQuery);
            }
        Session["open"] = "yes";
        Response.Redirect("admin.aspx");
    }
}