using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
public partial class User_FullItem : System.Web.UI.Page
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
        string str = "select * from productTbl where pid='" + Request.QueryString["id"] + "'";
        SqlDataAdapter da = new SqlDataAdapter(str, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Image3.ImageUrl=dt.Rows[0]["img1"].ToString();

        Image2.ImageUrl = dt.Rows[0]["img2"].ToString();

        Image1.ImageUrl = dt.Rows[0]["img3"].ToString();
        Label1.Text=dt.Rows[0]["prodNm"].ToString();
        Label2.Text = dt.Rows[0]["mrp"].ToString();
        Label3.Text = dt.Rows[0]["descr"].ToString();
        Label4.Text = "Discount "+dt.Rows[0]["discount"].ToString();
    }

    protected void buybtn_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string str = "insert into sellTbl (pid,Id) values('" + Request.QueryString["id"] + "','"+Session["uid"]+"')";
            SqlCommand cmd = new SqlCommand(str,conn);
            cmd.ExecuteNonQuery();
           conn.Close();
           Response.Redirect("MyOrders.aspx");
        }
        catch (Exception exc)
        {
            
            throw;
        }
    }
}