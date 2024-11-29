using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for Arithmatic
/// </summary>
public class Arithmatic
{
	public Arithmatic()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int sum(int num1,int num2){
        return(num1+num2);
    }
    public int multy(int num1, int num2)
    {
        return (num1 * num2);
    }
}
