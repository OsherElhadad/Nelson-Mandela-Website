using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    public string usermsg = "";
    public string cmsg = "";
    public string year = "";
    public string month = "";
    public string day = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["mis"] == null)
            Application["mis"] = 0;
        int i;
        for(i=2010;i>=1900;i--)
            year+="<option value='"+i+"'>"+i+"</option>";
        for (i = 1; i <= 12; i++)
            month += "<option value='" + i + "'>" + i + "</option>";
        for (i = 1; i <= 31; i++)
            day += "<option value='" + i + "'>" + i + "</option>";

        Session["page"] = "";
        string cFirstname = Request["firstname"];
        string cLastname = Request["lastname"];
        string cID = Request["IDnumber"];
        string cGender = Request["gender"];
        string cYear = Request["year"];
        string cMounth = Request["mounth"];
        string cDay = Request["day"];
        string cEmail = Request["email"];
        string cPassword = Request["password1"];
        string cStreet = Request["street"];
        string cHousenumber = Request["housenumber"];
        string cZipcode = Request["zipcode"];
        string cCity;
        if (Request["city"] != "0")
            cCity = Request["city"];
        else
            cCity = Request["yeshuv"];
        string cPhone = Request["telephone"];
        string cHobby = Request["hobby"];
        string cSpecial = Request["special"];
        string databaseName = "db.mdf";
        string insertQuery;
        string selectQuery;
        if (Request["submit"] != null)
        {
            selectQuery = "SELECT * FROM myUsers WHERE myID ='" + cID + "'";
            if (MyAdoHelper.IsExist(databaseName, selectQuery))
                cmsg = "<font color='red'>מספר תעודת הזהות כבר קיים</font>";
            else
            {
                insertQuery = "INSERT INTO myUsers (myFirstName, myLastName, myID, myGender, myYear, myMounth, myDay, myEmail, myPassword, myStreet, myHouseNumber, myZipcode, myCity, myPhoneNumber, myHobby, mySpecial, myManager) VALUES (N'";
                insertQuery += cFirstname + "',N'" + cLastname + "','" + cID + "','" + cGender + "','" + cYear + "','" + cMounth + "','" + cDay + "','" + cEmail + "',N'" + cPassword + "',N'" + cStreet + "','" + cHousenumber + "','" + cZipcode + "',N'" + cCity + "','" + cPhone + "',N'" + cHobby + "',N'" + cSpecial + "','n')";
                MyAdoHelper.DoQuery(databaseName, insertQuery);
                Session["msg"] = "<font color='Blue'>ההרשמה בוצעה בהצלחה</font>";
                Session["name"] = cFirstname;
                Session["ID"] = cID;
                Session["manager"] = "no";
                Application["mis"] = (int)Application["mis"] + 1;
                Response.Redirect("Default.aspx");
            }
        }

        string cID1 = Request["id"];
        string cPassword1 = Request["password"];
        string selectQuery1 = "SELECT * FROM myUsers WHERE myID='" + cID1 + "'";
        DataTable table = MyAdoHelper.ExecuteDataTable(databaseName, selectQuery1);
        if (Request["enterSite"] != null)
        {
            Session["ID"] = cID1;
            if (cID1 != "")
            {
                string sql = "SELECT * FROM myUsers WHERE myID = N'" + cID1 + "'";
                if (MyAdoHelper.IsExist(databaseName, sql))
                {
                    string sql2 = "SELECT * FROM myUsers WHERE myPassword = N'" + cPassword1 + "' AND myID = N'" + cID1 + "'";
                    if (MyAdoHelper.IsExist(databaseName, sql2))
                    {
                        Application["mis"] = (int)Application["mis"] + 1;
                        Session["name"] = (string)table.Rows[0]["myFirstName"];
                        if ((string)table.Rows[0]["myManager"] == "y")
                            Session["manager"] = "yes";
                        else
                            Session["manager"] = "no";
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        Session["msg3"] = "שם משתמש או סיסמה אינם נכונים";
                        return;
                    }
                }
                else
                {
                    Session["msg3"] = "שם משתמש או סיסמה אינם נכונים";
                    return;
                }
            }
            else
            {
                Session["msg3"] = "שם משתמש או סיסמה אינם נכונים";
                return;
            }
        }
    }
}