using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services;


public partial class CS : System.Web.UI.Page
{

    [WebMethod]
    public static List<string> GetSupp(string Suppdetails)
    {
        List<string> sup = new List<string>();
        string con = ConfigurationManager.ConnectionStrings["PathDb"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(con);
        string sqlquery = string.Format("select CompanyName from [dbo].[ShipperMaster] where CompanyName like '%(0)%'", Suppdetails);
        sqlcon.Open();
        SqlCommand sqlcommand = new SqlCommand(sqlquery, sqlcon);
        SqlDataReader sdr = sqlcommand.ExecuteReader();
        while (sdr.Read())
        {
            sup.Add(sdr.GetString(0));
        }
        sqlcon.Close();
        return sup;
    }

    protected void ShowPopup(object sender, EventArgs e)
    {
        string title = "Greetings";
        //string body = "Welcome to ASPSnippets.com";
        ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "');", true);
    }
}