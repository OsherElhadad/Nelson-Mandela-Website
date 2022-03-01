using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    public string msg1;
    public string msg2;
    public string msg4;
    public string userColor;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Application["mis"]==null)
            Application["mis"] = 0;
        Session["page"] = "Default.aspx";
        msg1 = (string)Session["msg"];
        Session["msg"] = null;
        if (Session["name"] == null)
        {
            msg4 = "visible";
            userColor = "#3EA4E2";
        }
        else
        {
            msg4 = "hidden";
            if (Session["manager"] == "yes")
                userColor = "#EFB76D";
            else
                userColor = "#1BB52A";

        }

        string cID = Request["id"];
        string cPassword = Request["password"];
        string databaseName = "db.mdf";
        string selectQuery = "SELECT * FROM myUsers WHERE myID='" + cID + "'";
        DataTable table = MyAdoHelper.ExecuteDataTable(databaseName, selectQuery);
        if (Request["enterSite"] != null)
        {
            Session["ID"] = cID;
            if (cID != "")
            {
                string sql = "SELECT * FROM myUsers WHERE myID = N'" + cID + "'";
                if (MyAdoHelper.IsExist(databaseName, sql))
                {
                    string sql2 = "SELECT * FROM myUsers WHERE myPassword = N'" + cPassword + "' AND myID = N'" + cID + "'";
                    if (MyAdoHelper.IsExist(databaseName, sql2))
                    {
                        Application["mis"] = (int)Application["mis"] + 1;
                        msg4 = "hidden";
                        Session["name"] = (string)table.Rows[0]["myFirstName"];
                        if ((string)table.Rows[0]["myManager"]=="y")
                            Session["manager"] = "yes";
                        else
                            Session["manager"] = "no";
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        msg2 = "שם משתמש או סיסמה אינם נכונים";
                        return;
                    }
                }
                else
                {
                    msg2 = "שם משתמש או סיסמה אינם נכונים";
                    return;
                }
            }
            else
            {
                msg2 = "שם משתמש או סיסמה אינם נכונים";
                return;
            }
        }
    }
}