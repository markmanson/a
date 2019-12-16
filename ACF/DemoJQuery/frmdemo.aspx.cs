using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

namespace DemoJQuery
{
    public partial class frmdemo : System.Web.UI.Page
    {


        string str = @"Data Source=UNIAD43;Initial Catalog=NORTHWND;Persist Security Info=True;User ID=sa;Password=root";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            string com = " SELECT distinct CompanyName FROM [NORTHWND].[dbo].[ShipperMaster]";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "CompanyName";
            DropDownList1.DataValueField = "CompanyName";
            // DropDownList1.DataValueField = "ShipperID";
            //DropDownList1.ToolTip = "FullAddress";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select CompanyName--", "0"));
        }

        protected void ShowPopup(object sender, EventArgs e)
        {
            string title = "Greetings";
            //string body = "Welcome to ASPSnippets.com";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "');", true);
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(str);
        //    //string com = "SELECT Address1+','+Address2+','+Area+','+City as FullAddress FROM [NORTHWND].[dbo].[ShipperMaster] where ShipperID ='" + DropDownList1.SelectedValue.ToString() + "'";
        //    //string com = "SELECT Address1+','+Address2+','+Area+','+City as FullAddress FROM [NORTHWND].[dbo].[ShipperMaster] where ShipperID ='" + myMainPageInput.Text.ToString() + "'";
        //    string com = "SELECT City FROM [NORTHWND].[dbo].[ShipperMaster] where CompanyName = " + "'" + DropDownList1.SelectedItem + "'";
        //    SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //    DataTable dt = new DataTable();
        //    adpt.Fill(dt);
        //    DropDownList2.DataSource = dt;
        //    //txtT2.Text = DropDownList1.SelectedValue.ToString();
        //   // txtT3.Text = dt.Rows[0][0].ToString();
        //    DropDownList2.DataTextField = "City";
        //   // DropDownList2.DataValueField = "ShipperID";
        //    DropDownList2.DataBind();
        //}

        //protected void txtT2_TextChanged(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(str);
        //   // string com = "SELECT Address1+','+Address2+','+Area+','+City as FullAddress FROM [NORTHWND].[dbo].[ShipperMaster] where ShipperID ='" + txtT2.Text + "'";
        //    SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //    DataTable dt = new DataTable();
        //    adpt.Fill(dt);
        //    //txtT3.Text = dt.Rows[0][0].ToString();
        //}
        [System.Web.Services.WebMethod]
        public static string ShowBuildingSelect(string parkValue)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["PathDB"].ToString());
            string result = "<option value='0'> - Select City - </option>";
            conn.Open();
            string sql = "Select City, Address1+','+Address2+','+Area+','+City as FullAddress, ShipperID from [NORTHWND].[dbo].[ShipperMaster] Where  CompanyName ='" + parkValue + "'";
            SqlCommand buildings = new SqlCommand(sql, conn);
            SqlDataReader buildingsNew = buildings.ExecuteReader();

            while (buildingsNew.Read())//Add the results to the dropdownlist
            {
                result += "<option value ='" + buildingsNew.GetString(1) + "'>" + buildingsNew.GetString(0) + " (" + buildingsNew.GetInt32(2) + ")</option>";
            }

            conn.Close();
            return result;

        }


        [System.Web.Services.WebMethod]
        public static string[] GetCustomers(string prefix)
        {
            List<string> customers = new List<string>();
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PathDB"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select distinct CompanyName from ShipperMaster where CompanyName like @SearchText + '%'";
                    cmd.Parameters.AddWithValue("@SearchText", prefix);
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            customers.Add(string.Format("{0}-{0}", sdr["CompanyName"], sdr["CompanyName"]));
                        }
                    }
                    conn.Close();
                }
            }
            return customers.ToArray();
        }

        [System.Web.Services.WebMethod]
        public static string ShowTextBox(string txtVal)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["PathDB"].ToString());
            string result = "<option value='0'> - Select City - </option>";
            conn.Open();
            string sql = "Select City, Address1+','+Address2+','+Area+','+City as FullAddress, ShipperID from [NORTHWND].[dbo].[ShipperMaster] Where  CompanyName ='" + txtVal + "'";
            SqlCommand buildings = new SqlCommand(sql, conn);
            SqlDataReader buildingsNew = buildings.ExecuteReader();

            while (buildingsNew.Read())//Add the results to the dropdownlist
            {
                result += "<option value ='" + buildingsNew.GetString(1) + "'>" + buildingsNew.GetString(0) + " (" + buildingsNew.GetInt32(2) + ")</option>";
            }

            conn.Close();
            return result;

        }





        protected void Unnamed_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int _Id;

            int.TryParse(e.CommandArgument.ToString(), out _Id);
            if (e.CommandName == "Select")
            {
                //SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["PathDB"].ToString());
                //string Query = "select * from ShipperMaster where shipperid =" + _Id;
                //SqlCommand buildings = new SqlCommand(Query, conn);
                //DataSet ds = new DataSet();
                //SqlDataReader buildingsNew = buildings.ExecuteReader();
                
            }
        }
    }
}