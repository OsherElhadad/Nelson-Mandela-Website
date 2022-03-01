using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page4 : System.Web.UI.Page
{
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
    }
}