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
    public partial class conlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-OVKDQQQ;Database=owners;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("select*from reg1 where Username='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                string status = dr.GetString(4).ToString();
                if (status == "Approved")
                {

                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('Welcome')", true);
                    Response.Redirect("consumerhome.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('your account declined')", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('your account is not yet activated')", true);

            }
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CONNREG.aspx");

        }
    }
    
    }
