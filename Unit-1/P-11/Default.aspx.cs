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
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;

        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;

        }
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton3.Checked)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            Panel1.Visible = true;
        }
        if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel2.Visible = true;
        }
        if (RadioButtonList1.SelectedIndex == 2)
        {
            Panel3.Visible = true;
        }
    }
}
