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
    public partial class conreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into reg1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','Pending')", con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('Submitted')", true);

            con.Close();
        }
    }
}