/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : June 12, 2006
  Description   : - The page function as  intermediate page to assign session variable 
  ----------------------------------------------------------------------------------------------------------*/
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

public partial class prestudent_detail_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("mode", Request.QueryString["mode"]);
        Session.Add("studentid", Request.QueryString["studentid"]);
        Response.Redirect("student_edit_record.aspx");
    }
}
