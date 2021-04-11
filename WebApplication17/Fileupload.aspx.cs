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
    public partial class Fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database= upload1; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from upload1", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/file/") + FileUpload1.FileName);
                Label5.Text = "File uploaded";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label5.Text = "no file";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            string file = FileUpload1.FileName;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database= upload1 ; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into upload1 (CodeId,Plat_form,Concept,Code) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + file + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);


                Response.TransmitFile(Server.MapPath("~/file/") + e.CommandArgument);
                Response.End();


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}