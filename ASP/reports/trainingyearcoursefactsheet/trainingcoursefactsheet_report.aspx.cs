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
using Microsoft.Reporting.WebForms;
public partial class trainingcoursefactsheet_report : System.Web.UI.Page
{
    protected string _USTTI_REPORTS_TEMPLATES;

    protected void Page_Load(object sender, System.EventArgs e)
    {
        initPage();
    }

    private void initPage()
    {
        USTTI_REPORTS_TEMPLATES = ConfigurationManager.AppSettings["ustti.reports.templates"];
        ReportViewer1.LocalReport.ReportPath = Server.MapPath(USTTI_REPORTS_TEMPLATES + "trainingcoursefactsheet.rdlc");
    }

    public string USTTI_REPORTS_TEMPLATES
    {
        get
        {
            return _USTTI_REPORTS_TEMPLATES;
        }
        set
        {
            _USTTI_REPORTS_TEMPLATES = value;
        }
    }
}

