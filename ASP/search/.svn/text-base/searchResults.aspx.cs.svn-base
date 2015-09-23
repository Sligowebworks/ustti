using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using USTTI.Session;
using USTTI.Data;
using USTTI.Util;

public partial class search_searchResults : System.Web.UI.Page
{    
    protected USTTISessionManager SessionManager;
    protected USTTIUtil UtilManager;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("CurrentPage", "ALL");
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
            UtilManager.AddContraint(ConstraintList, app.key, app.keyValue, "searchResults");
        }       
    }

    private void BindData()
    {
        DataTable dt = GetResultsData();
        lblReturnNumber.Text = dt.DefaultView.Count.ToString();
        QueueGrid.DataSource = dt;
        QueueGrid.DataBind();     
    }

    protected void SortDataGrid(object sender, DataGridSortCommandEventArgs e)
    {
        if( (Session["SortExpression"] != null ) && ( Session["SortExpression"].ToString() == e.SortExpression.ToString() ) && (Session["OrderExpression"].ToString() == "ASC"))
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
    
    protected void Applicant_Click(object sender, CommandEventArgs e)
    {        
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "", ((LinkButton)sender).Text.Trim());
    }

    protected void FirstName_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "First", ((LinkButton)sender).Text.Trim());
    }    

    protected void LastName_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Last", ((LinkButton)sender).Text.Trim());
    }

    protected void Gender_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Gender", ((LinkButton)sender).Text.Trim());
    }
  
    protected void Participant_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Participat", ((LinkButton)sender).Text.Trim());
    }

    protected void Country_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Country", ((LinkButton)sender).Text.Trim());
    }

    protected void CourseNum_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Course Num", ((LinkButton)sender).Text.Trim());
    }

    protected void Title_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Title", ((LinkButton)sender).Text.Trim());
    }

    protected void StartDate_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Start Date", ((LinkButton)sender).Text.Trim());
    }

    protected void OrientationStart_Click(object sender, CommandEventArgs e)
    {
        UtilManager.SearchRedirectAction(Response, "searchResults.aspx", "Orientation Date", ((LinkButton)sender).Text.Trim());
    }


    private DataTable GetResultsData()
    {
        USTTISessionCollection SessionList = SessionManager.getSessionList();                
        
        String sql = "select * from ad_hoc_default ";

        sql = sql +  " where 1 = 1 ";                
        
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Last"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("First"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Applicant ID"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Country"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Course Num"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Title"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Start Date"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Orientation Start"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Gender"));
        sql = sql + UtilManager.addStmtToWhereClause(SessionList.Get("Participat"));

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
            stmt = "Order by [" + Session["SortExpression"] + "] " + OrderExpression ;
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
        UtilManager.loadRequest(Request, SessionManager, "Name");
        UtilManager.loadRequest(Request, SessionManager, "Sponsor");
        UtilManager.loadRequest(Request, SessionManager, "Type");
        UtilManager.loadRequest(Request, SessionManager, "Gender");
        UtilManager.loadRequest(Request, SessionManager, "Participat");
        UtilManager.loadRequest(Request, SessionManager, "Years");
    }    
}
