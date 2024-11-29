using System;
using System.Collections;
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

public partial class Secure_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Profile.fname;
 TextBox2.Text = Profile.lname;
  Response.Write("<body bgcolor="+System.Drawing.Color.FromName(Profile.fclr)+">");
 Image1.ImageUrl = "~/" + Profile.profilepic;
 mybody.Style[HtmlTextWriterStyle.BackgroundColor] = Profile.fclr;
    }
}
