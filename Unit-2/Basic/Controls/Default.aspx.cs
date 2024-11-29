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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("You clicked the button");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile){
            FileUpload1.SaveAs(Server.MapPath("~/UploadImages/" + FileUpload1.FileName));
        }
    }
}
