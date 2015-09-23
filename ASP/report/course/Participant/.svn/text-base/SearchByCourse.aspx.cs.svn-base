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
using USTTI.Data;


public partial class reports_participants_SearchByCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string CourseID = Request["CourseID"].ToString();
            string Year = Request["Year"].ToString();

            if (!Page.IsPostBack)
            {
                loadReport(CourseID, Year);
            }
        }
        catch (Exception ex)
        {

        }

    }

    private void loadReport(string CourseID, string Year)
    {
        try
        {
            string USTTI_REPORTS_TEMPLATES = ConfigurationManager.AppSettings["ustti.new.reports.templates"];
            RPPartipants.Visible = true;
            RPPartipants.LocalReport.ReportPath = Server.MapPath(USTTI_REPORTS_TEMPLATES + "\\course\\ParticipantsByCourse.rdlc");
            
            SqlConnection thisConnection = new SqlConnection();
            SqlParameter[] SearchValue = new SqlParameter[1];
            SqlDataReader reader;

            thisConnection.ConnectionString = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_ParticipantByCourse";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection = thisConnection;

            cmd.Parameters.Add(new SqlParameter("@CourseID", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@Year", SqlDbType.NVarChar, 10));
            cmd.Parameters["@CourseID"].Value = CourseID;
            cmd.Parameters["@Year"].Value = Year;
            thisConnection.Open();
            reader = cmd.ExecuteReader();

            DataSet thisDataSet = new DataSet();
            DataTable dt = new DataTable();
            thisDataSet.Tables.Add(dt);
            thisDataSet.Load(reader, LoadOption.PreserveChanges, thisDataSet.Tables[0]);

            ReportDataSource datasource = new
              ReportDataSource("ParticipantByCourse_sp_ParticipantByCourse",
              thisDataSet.Tables[0]);

            RPPartipants.LocalReport.DataSources.Clear();
            RPPartipants.LocalReport.DataSources.Add(datasource);
            RPPartipants.LocalReport.Refresh();

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}
