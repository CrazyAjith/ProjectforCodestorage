using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17
{
    public partial class filesbutton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin5.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin3.aspx");
        }
    }
}