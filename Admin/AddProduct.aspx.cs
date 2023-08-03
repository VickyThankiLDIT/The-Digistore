using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class Admin_AddProduct : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                btnadd.Text = "Update Product";
                heading.InnerText = "Update Product";
                SqlDataAdapter da = new SqlDataAdapter("select * from productTbl where pid=" + Request.QueryString["id"], conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ddlcat.SelectedValue = dt.Rows[0][1].ToString();
                txtpname.Text = dt.Rows[0][2].ToString();
                txtbrand.Text = dt.Rows[0][3].ToString();
                txtdesc.Text = dt.Rows[0][4].ToString();
                lblfile1.Text = dt.Rows[0][5].ToString();
                lblfile1.Visible = true;
                lblfile2.Text = dt.Rows[0][6].ToString();
                lblfile2.Visible = true;
                lblfile3.Text = dt.Rows[0][7].ToString();
                lblfile3.Visible = true;
                txtmrp.Text = dt.Rows[0][8].ToString();
            }
            else
                btnadd.Text = "Add Product";
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.FileName.Contains(".jpg") || FileUpload1.FileName.Contains(".png") || FileUpload1.FileName.Contains(".jpeg") || FileUpload2.FileName.Contains(".jpg") || FileUpload2.FileName.Contains(".png") || FileUpload2.FileName.Contains(".jpeg") || FileUpload3.FileName.Contains(".jpg") || FileUpload3.FileName.Contains(".png") || FileUpload3.FileName.Contains(".jpeg"))
                {
                    if (btnadd.Text == "Add Product")
                    {
                        FileUpload1.SaveAs(Server.MapPath("../img/" + FileUpload1.FileName));
                        string filename1 = "../img/" + FileUpload1.FileName;
                        FileUpload2.SaveAs(Server.MapPath("../img/" + FileUpload2.FileName));
                        string filename2 = "../img/" + FileUpload2.FileName;
                        FileUpload3.SaveAs(Server.MapPath("../img/" + FileUpload3.FileName));
                        string filename3 = "../img/" + FileUpload3.FileName;
                        conn.Open();
                        string str = "insert into ProductTbl(cat,prodNm,brand,descr,img1,img2,img3,mrp) values('"+ddlcat.SelectedItem.ToString()+"','" + txtpname.Text + "','" + txtbrand.Text + "','" + txtdesc.Text + "','"
                            + filename1 + "','" + filename2 + "','" + filename3 + "','" + txtmrp.Text + "')";
                        SqlCommand cmd = new SqlCommand(str, conn);
                        cmd.ExecuteNonQuery();
                        lblmsg.Text = "Product inserted successfully.";
                        conn.Close();
                    }
                }
                else
                {
                    lblmsg.Text = "Invalid image file.";
                }
            }
            else
            {
                string filename1, filename2, filename3, str;
                if (!FileUpload1.HasFile)
                {
                    filename1 = lblfile1.Text;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("../img/" + FileUpload1.FileName));
                    filename1 = "../img/" + FileUpload1.FileName;
                }
                if (!FileUpload2.HasFile)
                {
                    filename2 = lblfile2.Text;
                }
                else
                {
                    FileUpload2.SaveAs(Server.MapPath("../img/" + FileUpload2.FileName));
                    filename2 = "../img/" + FileUpload2.FileName;

                }
                if (!FileUpload3.HasFile)
                {
                    filename3 = lblfile3.Text;
                }
                else
                {
                    FileUpload3.SaveAs(Server.MapPath("../img/" + FileUpload3.FileName));
                    filename3 = "../img/" + FileUpload3.FileName;

                }
                str = "update productTbl set cat='" + ddlcat.SelectedItem.ToString() + "', prodNm='" + txtpname.Text + "',brand='" + txtbrand.Text + "',descr='" + txtdesc.Text + "',img1='" + filename1 + "',img2='" + filename2 + "',img3='" + filename3 + "',mrp='" + txtmrp.Text + "' where pid=" + Request.QueryString["id"];

                conn.Open();
                SqlCommand cmd = new SqlCommand(str, conn);
                cmd.ExecuteNonQuery();
                lblmsg.Text = "Product updated successfully.";
                lblmsg.Visible = true;
                conn.Close();
                Response.Redirect("ViewProduct.aspx");

            }
            lblmsg.Visible = true;
            ddlcat.SelectedIndex = 0;
            txtpname.Text = "";
            txtbrand.Text = "";
            txtdesc.Text = "";
            txtmrp.Text = "";
        }
        catch (Exception exc)
        {
            lblmsg.Text = exc.ToString();
            lblmsg.Visible = true;
        }
    }
}