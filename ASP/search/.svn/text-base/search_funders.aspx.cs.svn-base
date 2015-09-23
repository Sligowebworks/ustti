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
using USTTI.Data;
using USTTI.Session;
using USTTI.Util;

public partial class search_search_funders : System.Web.UI.Page
{
    protected USTTISessionManager SessionManager;
    protected USTTIUtil UtilManager;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("CurrentPage", "FUNDERS");
        SessionManager = new USTTISessionManager(Session);
        UtilManager = new USTTIUtil();

        if (!Page.IsPostBack)
        {
            Session.Remove("SortExpression");
            Session["OrderExpression"] = "DESC";
            loadRequestData();
            SessionManager.saveList(Session);
            BindData();
        }
        loadConstraintData();
    }

    protected void loadConstraintData()
    {
        USTTISessionCollection SessionList = SessionManager.getSessionList();

        for (int i = 0; i < SessionList.Count; i++)
        {
            USTTISession app = (USTTISession)SessionList[i];
            UtilManager.AddContraint(ConstraintList, app.key, app.keyValue, "search_funders");
        }
    }

    private void BindData()
    {
        DataTable dt = GetResultsData();
        lblReturnNumber.Text = dt.DefaultView.Count.ToString();
        QueueGrid.DataSource = dt;
        QueueGrid.DataBind();
    }

    protected void FunderName_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "search_funders.aspx", "Name", ((LinkButton)sender).Text.Trim());
    }

    protected void FunderType_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "search_funders.aspx", "Type", ((LinkButton)sender).Text.Trim());
    }

    protected void First_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "search_funders.aspx", "First", ((LinkButton)sender).Text.Trim());
    }

    protected void Last_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "search_funders.aspx", "Last", ((LinkButton)sender).Text.Trim());
    }

    protected void Title_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "search_funders.aspx", "Title", ((LinkButton)sender).Text.Trim());
    }

    private DataTable GetResultsData()
    {
        USTTISessionCollection SessionList = SessionManager.getSessionList();

        String sql = "select * from ad_hoc_funders ";

        sql = sql + " where 1 = 1 ";

        
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Title"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Name"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Type"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("First"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Last"));

        sql = sql + GetSortExpression();

        USTTIDataAccess data = new USTTIDataAccess();

        DataTable dt = data.Fill(sql);

        return dt;
    }

    protected string GetSortExpression()
    {
        string stmt = string.Empty;
        string SortExpression = (string)Session["SortExpression"];
        string OrderExpression = (string)Session["OrderExpression"];

        if (SortExpression != null)
        {
            stmt = "Order by [" + Session["SortExpression"] + "] " + OrderExpression;
        }

        return stmt;
    }

    private void loadRequestData()
    {
        UtilManager.loadRequest(Request, SessionManager, "Last");
        UtilManager.loadRequest(Request, SessionManager, "First");
        UtilManager.loadRequest(Request, SessionManager, "Applicant ID");
        UtilManager.loadRequest(Request, SessionManager, "DOB");
        UtilManager.loadRequest(Request, SessionManager, "Country");
        UtilManager.loadRequest(Request, SessionManager, "Course Num");
        UtilManager.loadRequest(Request, SessionManager, "Title");
        UtilManager.loadRequest(Request, SessionManager, "Start Date");
        UtilManager.loadRequest(Request, SessionManager, "Year");
        UtilManager.loadRequest(Request, SessionManager, "Orientation Start");
        UtilManager.loadRequest(Request, SessionManager, "Funder Name");
        UtilManager.loadRequest(Request, SessionManager, "Sponsor");
        UtilManager.loadRequest(Request, SessionManager, "Type");
        UtilManager.loadRequest(Request, SessionManager, "Gender");
        UtilManager.loadRequest(Request, SessionManager, "Participat");
        UtilManager.loadRequest(Request, SessionManager, "Years");
    }

    protected void SortDataGrid(object sender, DataGridSortCommandEventArgs e)
    {
        if ((Session["SortExpression"] != null) && (Session["SortExpression"].ToString() == e.SortExpression.ToString()) && (Session["OrderExpression"].ToString() == "ASC"))
        {
            Session["OrderExpression"] = "DESC";
        }
        else
        {
            Session["OrderExpression"] = "ASC";
        }
        Session["SortExpression"] = e.SortExpression;
        BindData();
    }

    protected void QueueGrid_Paging(object sender, DataGridPageChangedEventArgs e)
    {
        QueueGrid.CurrentPageIndex = e.NewPageIndex;
        BindData();
    }
}
