using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Admin_List : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            display();
        }
        catch (Exception exc)
        {
            Response.Write("<script>alert('" + exc.ToString() + "')</script>");
        }
    }
    private void display()
    {
        SqlDataAdapter da = new SqlDataAdapter("select fname,lname,email,pwd from registerTbl", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}
