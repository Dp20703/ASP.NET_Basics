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
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS; AttachDbFilename=C:\Users\Darshan\Desktop\Code Playground\WPD-I\Unit-4\Practicals\P5\App_Data\Database.mdf; Integrated Security=True; User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select max(Product_code) from Product_info", con);
        int pcode = Convert.ToInt32(cmd.ExecuteScalar());
        txtpcode.Text = Convert.ToString(pcode + 1);

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".jpeg")
            {
                FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
            }
        }
        string img = "~/images/" + FileUpload1.FileName;
      
        SqlCommand cmd = new SqlCommand("insert into Product_info values('" + txtpcode.Text + "','" + txtpname.Text + "','" + txtpprice.Text + "','" + txtpdesc.Text + "','" + txtcname.Text + "','" + img + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Product_details.aspx");
    }
}
