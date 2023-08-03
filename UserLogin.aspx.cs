using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_UserLogin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtunm.Text != "" && txtpw.Text != "")
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from registerTbl where fname='" + txtunm.Text + "' and pwd='"
                    + txtpw.Text + "'", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["unm"] = txtunm.Text;
                    Session["uid"] = dt.Rows[0][0].ToString();
                    Response.Redirect("/TheDigistore/User/UserHome.aspx");
                    //Response.Write("<script>alert('Login Successfully...')</script>");
                }
                else
                {
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