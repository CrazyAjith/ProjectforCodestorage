﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication17
{
    public partial class COdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-OVKDQQQ ;Database=owner3;Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into owner4 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "aaa", "alert('done')", true);
            con.Close();
            Response.Redirect("co reg1.aspx");
        }
    }
}