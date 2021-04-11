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
    public partial class consumer3 : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select distinct Plat_form from owner1", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Plat_form";
                DropDownList1.DataValueField = "Plat_form";
                DropDownList1.DataBind();
                con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Concepts from owner1 where Plat_form='" + DropDownList1.SelectedItem.ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "Concepts";
            DropDownList2.DataValueField = "Concepts";
            DropDownList2.DataBind();
            con.Close();

        }

        protected void get1()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from owner1 where Plat_form='" + DropDownList1.SelectedItem.ToString() + "' and Concepts='" + DropDownList2.SelectedItem.ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
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
                GridViewRow gr = (GridViewRow)((Control)e.CommandSource).NamingContainer;
                TextBox des = (TextBox)gr.FindControl("TextBox1");
                Session["des"] = des.Text;
                Response.Redirect("consumerfileview.aspx");    
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            get1();

        }
        int count = 0;
        string a;
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton linkdown = sender as LinkButton;
            GridViewRow grid = linkdown.NamingContainer as GridViewRow;
            string downloadfile = GridView1.DataKeys[grid.RowIndex].Value.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("select*from downloads where Files='"+downloadfile+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.Read()) 
            {
               
                string ddd = dr.GetString(1).ToString();
                int oldcount = int.Parse(ddd);
                int ddddd = oldcount + 1;
                con.Close();
                con.Open();
                    SqlCommand cmd3 = new SqlCommand("update  downloads  set Counts='"+ddddd.ToString()+"' where Files='"+downloadfile+"'", con);
                cmd3.ExecuteNonQuery();
                    con.Close();
                
            }
            else
            {
                con.Close();
                count++;
                con.Open();
                SqlCommand cmd2 = new SqlCommand("insert into downloads values('"+downloadfile+"','"+count.ToString()+"')", con);
                cmd2.ExecuteNonQuery();
                con.Close();
            }

            


                Response.ContentType = "Image/jpg/pdf";
                Response.AddHeader("Content-Disposition", "attachment;filename=\"" + downloadfile + "\"");
                Response.TransmitFile(Server.MapPath("~/file/" + downloadfile));
                Response.End();
            }
        }
    }
