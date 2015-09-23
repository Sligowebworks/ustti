using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Microsoft.Reporting.WebForms;
using USTTI.Session;

public partial class report_multibiosheet_MultiBioSheet2 : System.Web.UI.Page
{
    protected USTTISessionManager SessionManager;

    protected void Page_Load(object sender, EventArgs e)
    {
        SessionManager = new USTTISessionManager(Session);

        try
        {
            USTTISessionCollection SessionList = SessionManager.getSessionList();

            string Country = loadRequest(SessionList, "Country");
            string Year = loadRequest(SessionList, "Year");
            string First = loadRequest(SessionList, "First");
            string Last = loadRequest(SessionList, "Last");
            string CourseNum = loadRequest(SessionList, "Course Num");
            string Title = loadRequest(SessionList, "Title");
            string Years = loadRequest(SessionList, "Years");
            string StartYear = String.Empty;
            string EndYear = String.Empty;
            if (Years.Length > 0)
            {
                StartYear = Years.Split(',')[0];
                EndYear = Years.Split(',')[1];
            }
            string Participant = loadRequest(SessionList, "Participat");

            Participant = Participant == "Y" ? "Yes" : "No";

            if (!Page.IsPostBack)
            {
                loadReport(Country, Year, First, Last, CourseNum, Title, StartYear, EndYear, Participant);
            }
        }
        catch (Exception ex)
        {

        }
    }

    private string loadRequest(USTTISessionCollection list, string key)
    {
        string request = string.Empty;

        try
        {
            request = list.Get(key).keyValue.Trim();
        }
        catch { }

        return request;
    }

    private void loadReport(string Country, string Year, string First, string Last, string CourseNum, string Title, string StartYear, string EndYear, string Participant)
    {
        try
        {
            string USTTI_REPORTS_TEMPLATES = ConfigurationManager.AppSettings["ustti.new.reports.templates"];
            ReportViewer1.Visible = true;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath(USTTI_REPORTS_TEMPLATES + "\\multibiosheet\\MultiBioSheetStatus.rdlc");
            SqlConnection thisConnection = new SqlConnection();
            SqlParameter[] SearchValue = new SqlParameter[1];
            SqlDataReader reader;

            thisConnection.ConnectionString = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_MultiBioSheetStatus";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection = thisConnection;            

            cmd.Parameters.Add(new SqlParameter("@Year", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@Country", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@First", SqlDbType.NVarChar, 30));
            cmd.Parameters.Add(new SqlParameter("@Last", SqlDbType.NVarChar, 30));
            cmd.Parameters.Add(new SqlParameter("@CourseNum", SqlDbType.NVarChar, 30));
            cmd.Parameters.Add(new SqlParameter("@Title", SqlDbType.NVarChar, 100));
            cmd.Parameters.Add(new SqlParameter("@StartYear", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@EndYear", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@Participant", SqlDbType.NVarChar, 10));

            if (Year.Length > 0)
            {
                cmd.Parameters["@Year"].Value = Year;
            }
            else
            {
                cmd.Parameters["@Year"].Value = System.DBNull.Value;
            }

            if (Country.Length > 0)
            {
                cmd.Parameters["@Country"].Value = Country;
            }
            else
            {
                cmd.Parameters["@Country"].Value = System.DBNull.Value;
            }

            if (First.Length > 0)
            {
                cmd.Parameters["@First"].Value = First;
            }
            else
            {
                cmd.Parameters["@First"].Value = System.DBNull.Value;
            }

            if (Last.Length > 0)
            {
                cmd.Parameters["@Last"].Value = Last;
            }
            else
            {
                cmd.Parameters["@Last"].Value = System.DBNull.Value;
            }

            if (CourseNum.Length > 0)
            {
                cmd.Parameters["@CourseNum"].Value = CourseNum;
            }
            else
            {
                cmd.Parameters["@CourseNum"].Value = System.DBNull.Value;
            }

            if (Title.Length > 0)
            {
                cmd.Parameters["@Title"].Value = Title;
            }
            else
            {
                cmd.Parameters["@Title"].Value = System.DBNull.Value;
            }

            if (StartYear.Length > 0)
            {
                cmd.Parameters["@StartYear"].Value = StartYear;
            }
            else
            {
                cmd.Parameters["@StartYear"].Value = System.DBNull.Value;
            }

            if (EndYear.Length > 0)
            {
                cmd.Parameters["@EndYear"].Value = EndYear;
            }
            else
            {
                cmd.Parameters["@EndYear"].Value = System.DBNull.Value;
            }

            if (Participant.Length > 0)
            {
                cmd.Parameters["@Participant"].Value = Participant;
            }
            else
            {
                cmd.Parameters["@Participant"].Value = System.DBNull.Value;
            }

            thisConnection.Open();
            reader = cmd.ExecuteReader();

            DataSet thisDataSet = new DataSet();
            DataTable dt = new DataTable();
            thisDataSet.Tables.Add(dt);
            thisDataSet.Load(reader, LoadOption.PreserveChanges, thisDataSet.Tables[0]);

            ReportDataSource datasource = new
              ReportDataSource("MultiBioSheetStatus_sp_MultiBioSheetStatus",
              thisDataSet.Tables[0]);

            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.LocalReport.Refresh();

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}
