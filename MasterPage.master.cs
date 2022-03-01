using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string msg1="";
    public string msg2;
    public string msg3;
    public string msg4;
    public string msg5;
    public string menu;
    public string logref;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            logref = "logOut.aspx";
            if (Session["manager"] == "yes")
            {
                msg1 = "המנהל " + Session["name"];
                menu = "<li id='edit'><a href='#'>עריכה</a><ul><li id='ed'><a href='update.aspx'>ערוך נתונים</a></li><li id='edu'><a href='admin.aspx'>ערוך נתוני משתמשים</a></li></ul></li>";
                Session["msg2"] = "התנתק";
                msg2 = "התנתק";
                msg3 = "hidden";
            }
            else
            {
                msg1 += Session["name"];
                menu = "<li id='edit'><a href='#'>עריכה</a><ul><li id='ed'><a href='update.aspx'>ערוך נתונים</a></li></ul></li>";
                Session["msg2"] = "התנתק";
                msg2 = "התנתק";
                msg3 = "visible";
            }
        }
        else
        {
            logref = "#";
            msg1 = "אורח";
            Session["msg2"] = "התחבר▼";
            msg2 = "התחבר" + "<lable style='color:Red'>▼</lable>";
            menu = "<li id='reg'><a href='form.aspx'>הרשמה</a></li>";
        }
        if (Session["page"] == "Default.aspx")
        {
            if (msg2 == "התנתק")
                msg4 = "visible";
            else
                msg4 = "hidden";
        }
        else
            msg4 = "visible";
        msg5 = (string)Session["msg3"];
    }
}
