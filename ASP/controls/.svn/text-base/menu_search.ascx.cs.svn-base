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
using USTTI.Core;

public partial class controls_menu_search : UsttiControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public Boolean ShowMultiBioSheetReport()
    {
        String CurrentPage = (String)Session["CurrentPage"];
        if (CurrentPage == "STUDENT_INFO")
            return true;
        else if (CurrentPage == "STATUS")
            return true;
        else
            return false;
    }

    public Boolean ShowPrintLabelsReport()
    {
        String CurrentPage = (String)Session["CurrentPage"];
        if (CurrentPage == "STATUS")
            return true;
        else
            return false;
    }

    public String MultiSheetPage()
    {
        String CurrentPage = (String)Session["CurrentPage"];
        String SheetPage = String.Empty;
        if ( CurrentPage == "STUDENT_INFO" )
        {
            SheetPage = "report/multibiosheet/MultiBioSheet.aspx";
        }
        if ( CurrentPage == "STATUS" )
        {
            SheetPage = "report/multibiosheet/MultiBioSheetStatus.aspx";
        }
        return SheetPage;
    }
}
