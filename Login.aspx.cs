using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class Admin_Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtnm.Text != "" && txtpwd.Text != "")
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Adminlogin where usr='" + txtnm.Text + "' and pwd='"
                    + txtpwd.Text + "'", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Response.Redirect("/TheDigistore/Admin/AdminHome.aspx");
                    //Response.Write("<script>alert('Login Successfully...')</script>");
                }
                else
                {
                    txtnm.Text = "";
                    Response.Write("<script>alert('Login Failure...')</script>");
                }
                
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        
        
    }
}