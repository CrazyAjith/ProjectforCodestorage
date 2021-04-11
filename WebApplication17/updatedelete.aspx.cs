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
    public partial class updatedelete : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ ;Database=upcode;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gvbind();
            }
            
        }
       protected void gvbind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select*from upcode1", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable ds = new DataTable();
            da.Fill(ds);
            conn.Close();

            GridView1.DataSource = ds;
            GridView1.DataBind();




        }
        protected void GridView1_RowEditing(object sender,GridViewUpdateEventArgs e)
        {
           
        }
        protected void GridView1_RowUpdating(object sender,GridViewUpdateEventArgs e)
        {
            
        }
        protected void GridView1_SelectedIndexChanged(object sender, GridViewPageEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
       //     gvbind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gvbind();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            string codeid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID");
            //TextBox txtname=(TextBox)gr.cell[].control[];  
            TextBox textpform = (TextBox)row.Cells[1].Controls[0];
            TextBox textconcept = (TextBox)row.Cells[2].Controls[0];
            TextBox textcode = (TextBox)row.Cells[3].Controls[0];

            GridView1.EditIndex = -1;
            conn.Open();
         

            SqlCommand cmd = new SqlCommand("update upcode1 set Platform='" + textpform.Text + "',Concept='" + textconcept.Text + "',Codes='" + textcode.Text+"' where CodeId='"+codeid+"'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            gvbind();
        }
         
        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
          //  Label lbldeleteid = (Label)row.FindControl("lblID");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM upcode1 where CodeId='" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            gvbind();
        }
    }  
    }
