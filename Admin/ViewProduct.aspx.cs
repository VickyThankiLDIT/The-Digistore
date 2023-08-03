using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class Admin_ViewProduct : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from productTbl", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    static int id;
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            id = Convert.ToInt32(e.CommandArgument);
        }
        else if (e.CommandName == "delete")
        {
            id = Convert.ToInt32(e.CommandArgument);
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Response.Redirect("AddProduct.aspx?id=" + id);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str = "delete from productTbl where pid=" + id;
        conn.Open();
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script>alert('record deleted sucessfully')</script>");
        display();
    }
}