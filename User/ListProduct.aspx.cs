using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class User_ListProduct : System.Web.UI.Page
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
        string str = "select * from productTbl";
        if (Request.QueryString["item"]!=null)
        {
            str += " where cat='"+Request.QueryString["item"]+"'";
        }
        SqlDataAdapter da = new SqlDataAdapter(str, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    static int id;
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName=="edit")
        {
            id =Convert.ToInt32( e.CommandArgument);
        }
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("FullItem.aspx?id="+id);
    }
}