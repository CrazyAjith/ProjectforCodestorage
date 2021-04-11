using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication17
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "admin" &&TextBox2 .Text == "admin@123")
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('done')", true);


                Response.Redirect("adminhome.aspx");

            }
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('invalid')", true);


            }

            
        }
    }
}