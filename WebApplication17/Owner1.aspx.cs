using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication17
{
    public partial class Owner1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //if (FileUpload2.HasFile)
            //{
            //    FileUpload2.SaveAs(Server.MapPath("~/file/") + FileUpload2.FileName);
            //    Label5.Text = "File uploaded";
            //    Label5.ForeColor = System.Drawing.Color.Red;
            //}
            //else
            //{
            //    Label5.Text = "no file";
            //    Label5.ForeColor = System.Drawing.Color.Red;
            //}
            //string file = FileUpload2.FileName;
            //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("insert into owner1 (Plat_form,Concepts,Descriptions,Codes) values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + file + "')", con);
            //cmd.ExecuteNonQuery();
            //ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('Stored Successfully')", true);

            //con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("owner2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("owner1.1.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("~/file/") + FileUpload2.FileName);
                Label5.Text = "File uploaded";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label5.Text = "no file";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            string file = FileUpload2.FileName;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into owner1 (Plat_form,Concepts,Descriptions,Codes,status) values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + file + "','Pending')", con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('Stored Successfully')", true);

            con.Close();


        }
    }
}