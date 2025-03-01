using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Registrationform
{
    public partial class registerhere : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           String Name = txtName.Text;
            String Address = txtAddress.Text;
            String Number = txtNumber.Text;
            
            String City = ddlCity.SelectedItem.Text;

            SqlCommand cmd = new SqlCommand("insert into registrationdata values ('"+Name+ "','"+Address+ "','"+Number+ "','"+City+"')", con);
            
            con.Open();
            cmd.ExecuteNonQuery();
            txtName.Text = "";
            txtAddress.Text = "";
            txtNumber.Text = "";
            ddlCity.SelectedIndex=0;
            Response.Write("<script>alert('Data Stored..!')</script>");       
        }
    }
}