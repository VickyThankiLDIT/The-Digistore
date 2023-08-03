using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
public partial class Admin_AdminChangepassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void clear()
    {
        txtoldpwd.Text = "";
        txtnewpwd.Text = "";
        txtcnfpwd.Text = "";
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        try
            {
                if (txtoldpwd.Text != "" && txtnewpwd.Text != "" && txtcnfpwd.Text != "")
                {
                    string str = "select * from Adminlogin where pwd='" + txtoldpwd.Text + "'";
                    SqlDataAdapter da = new SqlDataAdapter(str, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        conn.Open();
                        string strupd = "update Adminlogin set pwd='" + txtnewpwd.Text + "' where pwd='" + txtoldpwd.Text + "'";
                        SqlCommand cmd = new SqlCommand(strupd, conn);
                        cmd.ExecuteNonQuery();
                        lblchgpwd.Text = "Password has been changed...";
                        clear();
                        conn.Close();
                    }
                    else
                    {
                        Response.Write("Incorrect password...");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
    }
}
    