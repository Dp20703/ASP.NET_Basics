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
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Darshan\Desktop\Code Playground\WPD-I\Unit-4\Practicals\P8\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Emp_info values('" + txtempid.Text + "','" + txtempname.Text + "','" + txtempsalary.Text + "')", con);

        cmd.ExecuteNonQuery();
        Response.Write("Insert Successfully");
        con.Close();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update Emp_info set Employee_name='" + txtempname.Text + "'  where Employee_id='" + txtempid.Text + "'", con);
        cmd.ExecuteNonQuery();
        Response.Write("update successfully");
        con.Close();

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();
SqlCommand cmd = new SqlCommand("Delete from Emp_info where Employee_id='"+txtempid.Text+"'", con);
cmd.ExecuteNonQuery();
Response.Write("Delete Successfully");
con.Close();
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {

    }
}
