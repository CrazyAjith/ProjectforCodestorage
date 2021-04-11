using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication17
{
    public partial class consumer1__1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["id"].ToString();
            Label2.Text = Session["title"].ToString();
            Label3.Text = Session["des"].ToString();
            Label4.Text = Session["codes"].ToString();

        }
    }
}