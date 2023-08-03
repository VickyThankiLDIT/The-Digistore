using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Sockets;
using System.Net;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


public partial class User_UserRestPwd : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    Random rnd = new Random();
    static int code;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        try
        {
            code = rnd.Next(123123, 999999);

            string sendmail = "vickythanki4@gmail.com";
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress(sendmail);
            mail.To.Add(txtmail.Text);
            mail.Subject = "Demo";
            mail.Body = "Verification mail from Digistore " + code + "";

            SmtpServer.Port = 587;

            SmtpServer.Credentials = new System.Net.NetworkCredential("vickythanki4@gmail.com",
                "Vicky@1012");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            lblerror.Text = "mail sent";

        }
        catch (Exception ex)
        {
            lblerror.Text = ex.ToString();
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtmail.Text!=""&&txtnewpwd.Text!=""&&txtcnfnew.Text!="")
            {
                SqlDataAdapter da = new SqlDataAdapter("select *from registerTbl where email='"+txtmail.Text+"'",conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count>0)
                {
                    conn.Open();
                    string str = "update registerTbl set pwd='" + txtnewpwd.Text + "'where email='"+txtmail.Text+"'";
                    SqlCommand cmd = new SqlCommand(str, conn);
                    cmd.ExecuteNonQuery();
                    //Response.Write("Password has been changed...");
                    Response.Redirect("/UserLogin.aspx");
                    conn.Close();
                }
                else
                {
                    Response.Write("<script>alert('Password not changed...')</script>");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
           
        }  
        if (code.ToString() == txtopt.Text)
        {
            lblerror.Text = "otp verify";
        }
        else
        {
            lblerror.Text = "not match";
        }
    }
}