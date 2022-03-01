using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class update : System.Web.UI.Page
{
    public string mupdate = "";
    public string userDetails = "";
    public string userColor;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["page"] = "";
        if (Session["name"] == null)
            Response.Redirect("accessDenied.aspx");
        if (Session["manager"] == "yes")
            userColor = "#EFB76D";
        else
            userColor = "#1BB52A";
        string dbName = "db.mdf";

        string selectQuery = "SELECT * FROM myUsers WHERE myID = '" + Session["ID"] + "'";
        DataTable table = MyAdoHelper.ExecuteDataTable(dbName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            userDetails += "<form method='post' name='form2' action='updateEditedRecord.aspx' onsubmit='return bdika()'>";
            userDetails += "<table dir='rtl'>";
            
            userDetails += "<tr onkeyup='bdikaFName()'>";
            userDetails += "<td id='t1'>שם פרטי</td>";
            userDetails += "<td><input type='text' name='fname' maxlength='20' id='fname' value='" + table.Rows[0]["myFirstName"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e1' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";
            
            userDetails += "<tr onkeyup='bdikaLName()'>";
            userDetails += "<td id='t2'>שם משפחה</td>";
            userDetails += "<td><input type='text' name='lname' maxlength='20' id='lname' value='" + table.Rows[0]["myLastName"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e2' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";
            
            userDetails += "<tr onkeyup='bdikaEmail()'>";
            userDetails += "<td id='t3'>אימייל</td>";
            userDetails += "<td><input type='text' name='mail' maxlength='50' id='email1' value='" + table.Rows[0]["myEmail"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e3' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";
            
            userDetails += "<tr onkeyup='bdikaPhone()'>";
            userDetails += "<td id='t4'>טלפון</td>";
            userDetails += "<td><input type='text' name='phonenumber' maxlength='10' id='phone' value='" + table.Rows[0]["myPhoneNumber"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e4' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";
            
            userDetails += "<tr onkeyup='bdikaPassword()'>";
            userDetails += "<td id='t5'>סיסמה</td>";
            userDetails += "<td><input type='text' name='password' maxlength='16' id='pass1' value='" + table.Rows[0]["myPassword"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e5' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";

            string gender = (string)table.Rows[0]["myGender"];
            char first = gender[0];
            if (first == 'm')
            {
                userDetails += "<tr onchange='bdikaGender()'>";
                userDetails += "<td id='tm'>מין</td>";
                userDetails += "<td>זכר<input type='radio' name='gender' value='male' checked /></td>";
                userDetails += "<td>נקבה<input type='radio' name='gender' value='female' /></td>";
            }
            else
            {
                userDetails += "<tr onchange='bdikaGender()'>";
                userDetails += "<td id='tm'>מין</td>";
                userDetails += "<td>זכר<input type='radio' name='gender' value='male' /></td>";
                userDetails += "<td>נקבה<input type='radio' name='gender' value='female' checked /></td>";
            }
            userDetails += "<td><i class='fa fa-exclamation-triangle' id='em' style='visibility:hidden'></i></td></tr>";

            userDetails += "<tr onchange='bdikaDate()'><td style='font-size:large' id='t6'>תאריך לידה</td><td><select name='year' id='years'><option value=''>שנה</option><option value='" + table.Rows[0]["myYear"] + "' selected>" + table.Rows[0]["myYear"] + "</option>";
            for (int i = 1900; i <= 2007; i++)
            {
                userDetails += "<option value='" + i + "'>" + i + "</option>";
            }
            userDetails += "</select><select name='mounth' id='mounthes'><option value=''>חודש</option><option value='" + table.Rows[0]["myMounth"] + "' selected>" + table.Rows[0]["myMounth"] + "</option>";
            for (int i = 1; i <= 12; i++)
            {
                userDetails += "<option value='" + i + "'>" + i + "</option>";
            }
            userDetails += "</select><select name='day' id='days'><option value=''>יום</option><option value='" + table.Rows[0]["myDay"] + "' selected>" + table.Rows[0]["myDay"] + "</option>";
            for (int i = 1; i <= 31; i++)
            {
                userDetails += "<option value='" + i + "'>" + i + "</option>";
            }
            userDetails += "</select></td><td><i class='fa fa-exclamation-triangle' id='e6' style='visibility:hidden'></i></td></tr>";
            
            userDetails += "<tr onkeyup='bdikaStreet()'>";
            userDetails += "<td id='t7'>רחוב</td>";
            userDetails += "<td><input type='text' name='street' maxlength='20' id='street1' value='" + table.Rows[0]["myStreet"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e7' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";
            
            userDetails += "<tr onkeyup='bdikaHousenumber()'>";
            userDetails += "<td id='t8'>מספר בית</td>";
            userDetails += "<td><input type='text' name='housenumber' maxlength='5' id='hnum' value='" + table.Rows[0]["myHouseNumber"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e8' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";

            userDetails += "<tr onkeyup='bdikaZipcode()'>";
            userDetails += "<td id='t9'>מיקוד</td>";
            userDetails += "<td><input type='text' name='zipcode' maxlength='5' id='zipcode1' value='" + table.Rows[0]["myZipcode"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e9' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";
            
            userDetails += "<tr onkeyup='bdikaCity()'>";
            userDetails += "<td id='t10'>עיר</td>";
            userDetails += "<td><input type='text' name='city' id='tcity' maxlength='20' value='" + table.Rows[0]["myCity"] + "' /></td><td><i class='fa fa-exclamation-triangle' id='e10' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";

            userDetails += "<tr onkeyup='bdikaAbout()'>";
            userDetails += "<td id='t11'>פרטים נוספים</td>";
            userDetails += "<td><textarea name='special' maxlength='300' id='special1'>" + table.Rows[0]["mySpecial"] + "</textarea></td><td><i class='fa fa-exclamation-triangle' id='et' style='visibility:hidden'></i></td>";
            userDetails += "</tr>";

            userDetails += "</table>";
            userDetails += "<input type='submit' name='submit' value='עדכן' />";
            userDetails += "</form>";
        }

        mupdate += Session["msg1"];
        Session["msg1"] = null;

    }
}