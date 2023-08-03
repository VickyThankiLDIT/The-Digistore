using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class User_UserChangepassword : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
            {
                if (txtoldpwd.Text != "" && txtnewpwd.Text != "" && txtcnfpwd.Text != "")
                {
                    string str = "select * from registerTbl where pwd='" + txtoldpwd.Text + "'";
                    SqlDataAdapter da = new SqlDataAdapter(str, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        conn.Open();
                        string strupd = "update registerTbl set pwd='" + txtnewpwd.Text + "' where pwd='" + txtoldpwd.Text + "'";
                        SqlCommand cmd = new SqlCommand(strupd, conn);
                        cmd.ExecuteNonQuery();
                        lbluchngpwd.Text = "Password has been changed...";
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
