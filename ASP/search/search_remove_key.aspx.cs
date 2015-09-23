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
using USTTI.Session;

public partial class search_search_remove_key : System.Web.UI.Page
{
    protected USTTISessionManager SessionManager;
    protected void Page_Load(object sender, EventArgs e)
    {
        string key = Request["key"].ToString();
        string returnPage = Request["return"].ToString();
        SessionManager = new USTTISessionManager(Session);
        USTTISessionCollection SessionList = SessionManager.getSessionList();
        for (int i = 0; i < SessionList.Count; i++)
        {
            USTTISession app = (USTTISession)SessionList[i];
            if (app.key == key)
                SessionList.RemoveAt(i);
        }

        SessionManager.saveList(Session);

        Response.Redirect(returnPage + ".aspx");
    }
}
