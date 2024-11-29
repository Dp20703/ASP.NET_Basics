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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_FinishButtonClick(object sender,
WizardNavigationEventArgs e)
    {
        Profile.fname = TextBox1.Text;
        Profile.lname = TextBox2.Text;
        Profile.fclr = TextBox3.Text;
        if (FileUpload1.HasFile == true)
        {
            string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (ext.ToLower() == ".jpeg" || ext.ToLower() == ".jpg")
            {
                Profile.profilepic = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/") + FileUpload1.FileName);
            }
        }
    }

}
