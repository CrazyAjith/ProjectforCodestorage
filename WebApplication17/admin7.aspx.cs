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
    public partial class admin7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            get1();
        }


        protected void get1()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from searching", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Approve")
            {
                GridViewRow gvrow = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                Label CodeId = (Label)gvrow.FindControl("Label1");
                Label tittle = (Label)gvrow.FindControl("Label2");

                con.Open();
                SqlCommand cmd = new SqlCommand("update searching set status='Approved' where CodeId='" + CodeId.Text + "' and Tittle='" + tittle.Text + "'", con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('Approved')", true);

                con.Close();
                get1();
            }
            else
            {
                GridViewRow gvrow = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                Label CodeId = (Label)gvrow.FindControl("Label1");
                Label tittle = (Label)gvrow.FindControl("Label2");
                con.Open();
                SqlCommand cmd = new SqlCommand("update owner1 set status='Declined' where CodeId='" + CodeId.Text + "' and Tittle='" + tittle.Text + "'", con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('Declined')", true);
                con.Close();
                get1();

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //
    }
}
    