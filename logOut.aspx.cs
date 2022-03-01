using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["msg3"] = null;
        if (Session["msg2"] == "התנתק")
        {
            Session["name"] = null;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Default.aspx#logina");
        }
    }
}