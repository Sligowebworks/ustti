/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 26, 2006
  Description   : - The page functions as an interface to obtain country id and training year which 
                    will be used as parameters to generate participantbycountry report
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
public partial class participantbycountry_default : System.Web.UI.Page
{
    UsttiDataObject.utilities objUtil = new UsttiDataObject.utilities();
    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            objUtil.InitializeCountryList(CountryList, CountryDataSource);
            objUtil.GenerateDateList(TrainingYearList, "-Select Year-", 1996);
        }
        else
        {
        }
    }
    protected void btnGenerateReport_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Response.Redirect("participantbycountry_report.aspx?countryid=" + CountryList.SelectedValue.ToString() + "&year=" + TrainingYearList.SelectedValue);
        }
    }
}

