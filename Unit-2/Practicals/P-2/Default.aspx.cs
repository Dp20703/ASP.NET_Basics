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
        string clr="white";
        foreach (ListItem i in RadioButtonList1.Items) {
            if (i.Selected == true) {
                clr = i.Text;

            }

            MyBody.Style[HtmlTextWriterStyle.BackgroundColor] = clr;
        }
    }
}
