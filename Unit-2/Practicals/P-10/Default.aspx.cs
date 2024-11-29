using System;
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
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\USERS\\DARSHAN\\DESKTOP\\CODE PLAYGROUND\\WPD-I\\UNIT-2\\PRACTICALS\\P-10\\APP_DATA\\DATABASE.MDF;Integrated Security=True;User Instance=True";
con.Open();
System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
cmd.Connection = con;
cmd.CommandText = "select * from FriendsDetails";
System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
while (dr.Read())
{
DateTime dt = (DateTime)dr.GetValue(2);
DateTime dt1 = e.Day.Date;
if (dt.Month == dt1.Month)
{
if (Convert.ToString(dt.Day) == e.Day.DayNumberText)
{
int n = (int)dr.GetValue(0);
LiteralControl lc = new LiteralControl("<a href=Default2.aspx?EventID=" +n +">Birthday</a>");
e.Cell.Controls.Add(lc);
}
}
}}
    }

