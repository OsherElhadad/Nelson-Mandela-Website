using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class admin : System.Web.UI.Page
{
    public string usersList;
    public string usersCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["page"] = "";
        if (Session["name"] == null)
            Response.Redirect("accessDenied.aspx");
        if (Session["manager"] == "no")
            Response.Redirect("update.aspx");
        string databaseName = "db.mdf";

        string selectQuery = "";
        string selectAll = "SELECT * FROM myUsers";
        string selectByFirstName = "SELECT * FROM myUsers WHERE myFirstName = N'" + Request["firstName"] + "'";
        string selectByFirstNamePrefix = "SELECT * FROM myUsers WHERE myFirstName LIKE N'" + Request["firstName"] + "%'";
        string selectByLastName = "SELECT * FROM myUsers WHERE myLastName = N'" + Request["lastName"] + "'";
        string selectByLastNamePrefix = "SELECT * FROM myUsers WHERE myLastName LIKE N'" + Request["lastName"] + "%'";
        string selectByID = "SELECT * FROM myUsers WHERE myID = '" + Request["ID"] + "'";
        string selectByIDPrefix = "SELECT * FROM myUsers WHERE myID LIKE '" + Request["ID"] + "%'";
        string selectByGender = "SELECT * FROM myUsers WHERE myGender = '" + Request["gender"] + "'";
        string selectByGenderPrefix = "SELECT * FROM myUsers WHERE myGender LIKE '" + Request["gender"] + "%'";
        string selectByYear = "SELECT * FROM myUsers WHERE myYear = '" + Request["year"] + "'";
        string selectByYearPrefix = "SELECT * FROM myUsers WHERE myYear LIKE '" + Request["year"] + "%'";
        string selectByMounth = "SELECT * FROM myUsers WHERE myMounth = '" + Request["mounth"] + "'";
        string selectByMounthPrefix = "SELECT * FROM myUsers WHERE myMounth LIKE '" + Request["mounth"] + "%'";
        string selectByDay = "SELECT * FROM myUsers WHERE myDay = '" + Request["day"] + "'";
        string selectByDayPrefix = "SELECT * FROM myUsers WHERE myDay LIKE '" + Request["day"] + "%'";
        string selectByEmail = "SELECT * FROM myUsers WHERE myEmail = '" + Request["email"] + "'";
        string selectByEmailPrefix = "SELECT * FROM myUsers WHERE myEmail LIKE '" + Request["email"] + "%'";
        string selectByPassword = "SELECT * FROM myUsers WHERE myPassword = N'" + Request["password"] + "'";
        string selectByPasswordPrefix = "SELECT * FROM myUsers WHERE myPassword LIKE N'" + Request["password"] + "%'";
        string selectByStreet = "SELECT * FROM myUsers WHERE myStreet = N'" + Request["street"] + "'";
        string selectByStreetPrefix = "SELECT * FROM myUsers WHERE myStreet LIKE N'" + Request["street"] + "%'";
        string selectByHouseNumber = "SELECT * FROM myUsers WHERE myHouseNumber = '" + Request["housenumber"] + "'";
        string selectByHouseNumberPrefix = "SELECT * FROM myUsers WHERE myHouseNumber LIKE '" + Request["housenumber"] + "%'";
        string selectByZipcode = "SELECT * FROM myUsers WHERE myZipcode = '" + Request["zipcode"] + "'";
        string selectByZipcodePrefix = "SELECT * FROM myUsers WHERE myZipcode LIKE '" + Request["zipcode"] + "%'";
        string selectByCity = "SELECT * FROM myUsers WHERE myCity = N'" + Request["city"] + "'";
        string selectByCityPrefix = "SELECT * FROM myUsers WHERE myCity LIKE N'" + Request["city"] + "%'";
        string selectByPhoneNumber = "SELECT * FROM myUsers WHERE myPhoneNumber = '" + Request["phone"] + "'";
        string selectByPhoneNumberPrefix = "SELECT * FROM myUsers WHERE myPhoneNumber LIKE '" + Request["phone"] + "%'";
        string selectByInfo = "SELECT * FROM myUsers WHERE mySpecial = N'" + Request["info"] + "'";
        string selectByInfoPrefix = "SELECT * FROM myUsers WHERE mySpecial LIKE N'" + Request["info"] + "%'";
        string selectByManager = "SELECT * FROM myUsers WHERE myManager = '" + Request["manager"] + "'";
        if (((string)Session["open"]!="yes") &&
            Request["allUsers"] == null &&
            Request["byFirstName"] == null &&
            Request["byFirstPrefix"] == null &&
            Request["byLastName"] == null &&
            Request["byLastPrefix"] == null &&
            Request["byID"] == null &&
            Request["byIDPrefix"] == null &&
            Request["bygender"] == null &&
            Request["bygenderPrefix"] == null &&
            Request["byyear"] == null &&
            Request["byyearPrefix"] == null &&
            Request["bymounth"] == null &&
            Request["bymounthPrefix"] == null &&
            Request["byday"] == null &&
            Request["bydayPrefix"] == null &&
            Request["byemail"] == null &&
            Request["byemailPrefix"] == null &&
            Request["bypassword"] == null &&
            Request["bypasswordPrefix"] == null &&
            Request["bystreet"] == null &&
            Request["bystreetPrefix"] == null &&
            Request["byhousenumber"] == null &&
            Request["byhousenumberPrefix"] == null &&
            Request["byzipcode"] == null &&
            Request["byzipcodePrefix"] == null &&
            Request["bycity"] == null &&
            Request["bycityPrefix"] == null &&
            Request["byphone"] == null &&
            Request["byphonePrefix"] == null &&
            Request["byinfo"] == null &&
            Request["byinfoPrefix"] == null &&
            Request["bymanager"] == null)
            return;
        if (Request["allUsers"] != null)
            selectQuery = selectAll;
        else
            if (Request["byFirstName"] != null)
                selectQuery = selectByFirstName;
            else
                if (Request["byFirstPrefix"] != null)
                    selectQuery = selectByFirstNamePrefix;
                else
                    if (Request["byLastName"] != null)
                        selectQuery = selectByLastName;
                    else
                        if (Request["byLastPrefix"] != null)
                            selectQuery = selectByLastNamePrefix;
                        else
                            if (Request["byID"] != null)
                                selectQuery = selectByID;
                            else
                                if (Request["byIDPrefix"] != null)
                                    selectQuery = selectByIDPrefix;
                                else
                                    if (Request["bygender"] != null)
                                        selectQuery = selectByGender;
                                    else
                                        if (Request["bygenderPrefix"] != null)
                                            selectQuery = selectByGenderPrefix;
                                        else
                                            if (Request["byyear"] != null)
                                                selectQuery = selectByYear;
                                            else
                                                if (Request["byyearPrefix"] != null)
                                                    selectQuery = selectByYearPrefix;
                                                else
                                                    if (Request["bymounth"] != null)
                                                        selectQuery = selectByMounth;
                                                    else
                                                        if (Request["bymounthPrefix"] != null)
                                                            selectQuery = selectByMounthPrefix;
                                                        else
                                                            if (Request["byday"] != null)
                                                                selectQuery = selectByDay;
                                                            else
                                                                if (Request["bydayPrefix"] != null)
                                                                    selectQuery = selectByDayPrefix;
                                                                else
                                                                    if (Request["byemail"] != null)
                                                                        selectQuery = selectByEmail;
                                                                    else
                                                                        if (Request["byemailPrefix"] != null)
                                                                            selectQuery = selectByEmailPrefix;
                                                                        else
                                                                            if (Request["bypassword"] != null)
                                                                                selectQuery = selectByPassword;
                                                                            else
                                                                                if (Request["bypasswordPrefix"] != null)
                                                                                    selectQuery = selectByPasswordPrefix;
                                                                                else
                                                                                    if (Request["bystreet"] != null)
                                                                                        selectQuery = selectByStreet;
                                                                                    else
                                                                                        if (Request["bystreetPrefix"] != null)
                                                                                            selectQuery = selectByStreetPrefix;
                                                                                        else
                                                                                            if (Request["byhousenumber"] != null)
                                                                                                selectQuery = selectByHouseNumber;
                                                                                            else
                                                                                                if (Request["byhousenumberPrefix"] != null)
                                                                                                    selectQuery = selectByHouseNumberPrefix;
                                                                                                else
                                                                                                    if (Request["byzipcode"] != null)
                                                                                                        selectQuery = selectByZipcode;
                                                                                                    else
                                                                                                        if (Request["byzipcodePrefix"] != null)
                                                                                                            selectQuery = selectByZipcodePrefix;
                                                                                                        else
                                                                                                            if (Request["bycity"] != null)
                                                                                                                selectQuery = selectByCity;
                                                                                                            else
                                                                                                                if (Request["bycityPrefix"] != null)
                                                                                                                    selectQuery = selectByCityPrefix;
                                                                                                                else
                                                                                                                    if (Request["byphone"] != null)
                                                                                                                        selectQuery = selectByPhoneNumber;
                                                                                                                    else
                                                                                                                        if (Request["byphonePrefix"] != null)
                                                                                                                            selectQuery = selectByPhoneNumberPrefix;
                                                                                                                        else
                                                                                                                            if (Request["byinfo"] != null)
                                                                                                                                selectQuery = selectByInfo;
                                                                                                                            else
                                                                                                                                if (Request["byinfoPrefix"] != null)
                                                                                                                                    selectQuery = selectByInfoPrefix;
                                                                                                                                else
                                                                                                                                    if (Request["bymanager"] != null)
                                                                                                                                        selectQuery = selectByManager;
                                                                                                                                    else
                                                                                                                                        if(((string)Session["open"]=="yes"))
                                                                                                                                            selectQuery = selectAll;
                                                                
        DataTable table = MyAdoHelper.ExecuteDataTable(databaseName, selectQuery);
        int length = table.Rows.Count;
        if (length > 0)
        {
            usersList = "<table border='1'>";
            usersList += "<tr>";
            usersList += "<th>    תעודת    זהות</th>";
            usersList += "<th>שם פרטי</th>";
            usersList += "<th>שם משפחה</th>";
            usersList += "<th>סיסמה</th>";
            usersList += "<th>פלאפון</th>";
            usersList += "<th>דוא''ל</th>";
            usersList += "<th>מין</th>";
            usersList += "<th>שנת לידה</th>";
            usersList += "<th>חודש לידה</th>";
            usersList += "<th>יום לידה</th>";
            usersList += "<th>רחוב</th>";
            usersList += "<th>מספר בית</th>";
            usersList += "<th>מיקוד</th>";
            usersList += "<th>עיר</th>";
            usersList += "<th>פרטים</th>";
            usersList += "<th>מנהל</th>";
            usersList += "</tr>";
            for (int i = 0; i < length; i++)
            {
                usersList += "<tr>";
                usersList += "<form method='post' action='adminEdit.aspx'>";
                usersList += "<td><input type='text' name='ID' readonly='readonly' maxlength='9' value='" + table.Rows[i]["myID"] + "' /></td>";
                usersList += "<td><input type='text' name='fname' value='" + table.Rows[i]["myFirstName"] + "' /></td>";
                usersList += "<td><input type='text' name='lname'  value='" + table.Rows[i]["myLastName"] + "' /></td>";
                usersList += "<td><input type='text' name='password'  value='" + table.Rows[i]["myPassword"] + "' /></td>";
                usersList += "<td><input type='text' name='phone'  value='" + table.Rows[i]["myPhoneNumber"] + "' /></td>";
                usersList += "<td><input type='text' name='email'  value='" + table.Rows[i]["myEmail"] + "' /></td>";
                usersList += "<td><input type='text' name='gender'  value='" + table.Rows[i]["myGender"] + "' /></td>";
                usersList += "<td><input type='text' name='year'  value='" + table.Rows[i]["myYear"] + "' /></td>";
                usersList += "<td><input type='text' name='mounth'  value='" + table.Rows[i]["myMounth"] + "' /></td>";
                usersList += "<td><input type='text' name='day'  value='" + table.Rows[i]["myDay"] + "' /></td>";
                usersList += "<td><input type='text' name='street'  value='" + table.Rows[i]["myStreet"] + "' /></td>";
                usersList += "<td><input type='text' name='housenumber'  value='" + table.Rows[i]["myHouseNumber"] + "' /></td>";
                usersList += "<td><input type='text' name='zipcode'  value='" + table.Rows[i]["myZipcode"] + "' /></td>";
                usersList += "<td><input type='text' name='city'  value='" + table.Rows[i]["myCity"] + "' /></td>";
                usersList += "<td><textarea name='special'>" + table.Rows[i]["mySpecial"] + "</textarea></td>";
                usersList += "<td><input type='text' name='manager'  value='" + table.Rows[i]["myManager"] + "' /></td>";
                usersList += "<td><input type='submit' style='background-color:green; box-shadow:inset 0px 0px 20px 0px #caefab;' name='updateUser' value='עדכן' /></td>";
                usersList += "<td><input type='submit' style='background-color:red; box-shadow:inset 0px 0px 20px 0px #caefab;' name='deleteUser' value='מחק' /></td>";
                usersList += "</form>";
                usersList += "</tr>";
            }
            usersList += "</table>";
            usersCount = length.ToString();
            Session["open"] = "";
        }
    }
}