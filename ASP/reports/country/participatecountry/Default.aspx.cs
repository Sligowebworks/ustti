/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 18, 2006
  Description   : - The page functions as an interface to obtain parameter which will be used
                    to generate country report
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
public partial class participatecountry_report_default : System.Web.UI.Page
{

    UsttiDataObject.utilities objUtil = new UsttiDataObject.utilities();
    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        objUtil.GenerateDateList(StartYearList, "-Select Start Year-");
        objUtil.GenerateDateList(EndYearList, "-Select End Year-");
    }
    protected void btnGenerateReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("country_report.aspx?startyear=" +
            StartYearList.SelectedValue + "&endyear=" + EndYearList.SelectedValue);
    }
}

