/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 17, 2006
  Description   : - The page functions as an interface to obtain training year which will be used
                    as parameter to generate training year fact sheet
----------------------------------------------------------------------------------------------------------*/
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class trainingcoursefactsheet_report_default : System.Web.UI.Page
{
    UsttiDataObject.utilities objUtil = new UsttiDataObject.utilities();
    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        objUtil.GenerateDateList(YearList,"-Select Year-", 1996);
    }
    protected void btnGenerateReport_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Response.Redirect("trainingcoursefactsheet_report.aspx?year=" +
            YearList.SelectedValue + "&startdate=01/01/" + YearList.SelectedValue + "&enddate=" + DateTime.Now.Date);
        }
    }
}

