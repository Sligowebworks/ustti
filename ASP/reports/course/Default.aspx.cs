/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 26, 2006
  Description   : - The page functions as an interface to obtain sponsor id and training year
                    which will be used as parameter to generate course by sponsor report
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
public partial class coursebysponsor_default : System.Web.UI.Page
{
    UsttiDataObject.utilities objUtil = new UsttiDataObject.utilities();
    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
           
            RequiredFieldValidator1.Enabled = true;
            RequiredFieldValidator2.Enabled = true;
            RequiredFieldValidator3.Enabled = true;
            objUtil.GenerateDateList(YearList, "-Select Year-", 1996);
            objUtil.InitializeSponsorList(SponsorList, SponsorDataSource);
            tblEntryForm3.Visible = false;
        }
    }
    protected void btnGenerateReport_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            if(ReportMethodButton.SelectedValue.Equals("Yearly Report"))
            {
                Response.Redirect("coursebysponsoryearly_report.aspx?year=" +
                    YearList.SelectedValue+"&sponsorid="+SponsorList.SelectedValue);
            }
            else
            {
                Response.Redirect("coursebysponsorallyear_report.aspx?sponsorid=" + SponsorList.SelectedValue);
            }
        }
    }
    protected void ReportMethodSelection(object sender, EventArgs e)
    {
        
        if (ReportMethodButton.SelectedValue.Equals("Yearly Report"))
        {
            
            tblEntryForm3.Visible = true;
        }
        else
        {
            tblEntryForm3.Visible = false;
        }
    }
}

