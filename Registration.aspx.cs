using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtfnm.Text != "" && txtlnm.Text != "" && txtemail.Text != "" && txtcont.Text != "" && txtdate.Text != "" && txtadd.Text != "" && txtpass.Text != "" && txtcnf.Text != "")
            {

                string str = DateTime.Now.ToString("dd-MM-yyyy");
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into registerTbl (fname,lname,email,contact,dob,address,pwd) values('" + txtfnm.Text + "','" + txtlnm.Text + "','" + txtemail.Text + "','" + txtcont.Text + "','" + txtdate.Text + "','" + txtadd.Text + "','" + txtpass.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("UserLogin.aspx");
                //  clear();
                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}