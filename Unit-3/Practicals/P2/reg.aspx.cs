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
using System.Data.OleDb;

public partial class reg : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:\\asp1.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try{

            OleDbCommand cmd=new OleDbCommand("insert into Registration values('"+TextBox1.Text+"','"+TextBox2.Text+"',#"+TextBox3.Text +"#,'"+TextBox4.Text+"','"+TextBox5.Text+"')",con);
            cmd.ExecuteNonQuery();
            Label8.Text="Registration Successfullly Completed....";
            cmd.Dispose();
        }
        catch(Exception ex){
            Label7.Text=ex.Message;
        }

    }
}
