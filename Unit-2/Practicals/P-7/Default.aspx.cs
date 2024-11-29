﻿using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("myMultyValCookie");
        
        cookie.Values.Add("I_No", TextBox1.Text);
        cookie.Values.Add("I_Name", TextBox2.Text);
        cookie.Values.Add("I_Price", TextBox3.Text);
        cookie.Values.Add("I_Qty", TextBox4.Text);
        Response.Cookies.Add(cookie);
        Response.Redirect("~/Default2.aspx");
    }
}
