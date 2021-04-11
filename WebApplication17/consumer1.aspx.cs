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
    public partial class consumer1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            con.Open();
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = ("select*from searching  where Syntax LIKE '%'+@Syntax+'%' OR CodeId LIKE '%'+@CodeId+'%'");
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = con;
            sqlcomm.Parameters.AddWithValue("@Syntax", TextBox1.Text);
            sqlcomm.Parameters.AddWithValue("@CodeId", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
          
            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                GridViewRow gvrow = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                Label id = (Label)gvrow.FindControl("Label31");
                Label title = (Label)gvrow.FindControl("Label32");
                Label des = (Label)gvrow.FindControl("Label33");
                Label codes = (Label)gvrow.FindControl("Label34");
                Session["id"] = id.Text;
                Session["title"] = title.Text;
                Session["des"] = des.Text;
                Session["codes"] = codes.Text;
                Response.Redirect("consumer11.aspx");

            }
        }
    }
}