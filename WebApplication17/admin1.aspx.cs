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
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("select count (*) from owner1 ", con);
            int counts = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            Label1.Text = counts.ToString();

            SqlCommand cmd1 = new SqlCommand("select count (*) from reg1", con);
            int counts1 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());

            Label2.Text = counts1.ToString();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
        
        }

        protected void Label1_DataBinding(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select count (Plat_form) from owners ", con);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet dt = new DataSet();
            //da.Fill(dt);
           
               
            //    Label1.Text = dt.Tables[0].Rows[0]["Plat_form"].ToString();

            
        }
    }
}