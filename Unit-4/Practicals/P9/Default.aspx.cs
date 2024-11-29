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
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Darshan\Desktop\Code Playground\WPD-I\Unit-4\Practicals\P9\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string ecode = "";
        SqlCommand cmd = new SqlCommand("select max(EmpCode) from Emp",con);
        ecode = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
        if (ecode == "")
        {
            txtEmpcode.Text = "E001";
        }
        else
        {
            int newcode;
             newcode =Convert.ToInt32( ecode.Substring(1));
            newcode += 1;
            ecode = "E00" + newcode;
            txtEmpcode.Text = ecode;
        }


        
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        con.Open();
        string str = "insert into Emp values('" + txtEmpcode.Text + "','" + txtEmpname.Text + "','" + txtEmpaddress.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')";
        SqlCommand cmd1 = new SqlCommand(str, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Write("Record insrted successfully");

    }
}
