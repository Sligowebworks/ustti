using System;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.Reporting.WebForms;
using System.Web.UI.HtmlControls;

public partial class report_course_Sponsor_CourseBySponsor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string SponsorID = Request["SponsorID"].ToString();
            string Year = Request["Year"].ToString();

            if (!Page.IsPostBack)
            {
                loadReport(SponsorID, Year);
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void loadReport(string SponsorID, string Year)
    {
        try
        {
            string USTTI_REPORTS_TEMPLATES = ConfigurationManager.AppSettings["ustti.new.reports.templates"];
            ReportViewer1.Visible = true;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath(USTTI_REPORTS_TEMPLATES + "\\course\\CourseBySponsor.rdlc");
            SqlConnection thisConnection = new SqlConnection();
            SqlParameter[] SearchValue = new SqlParameter[1];
            SqlDataReader reader;

            thisConnection.ConnectionString = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_CoursesBySponsor";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection = thisConnection;

            cmd.Parameters.Add(new SqlParameter("@SponsorID", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@Year", SqlDbType.NVarChar, 10));
            cmd.Parameters["@SponsorID"].Value = SponsorID;
            cmd.Parameters["@Year"].Value = Year;
            thisConnection.Open();
            reader = cmd.ExecuteReader();

            DataSet thisDataSet = new DataSet();
            DataTable dt = new DataTable();
            thisDataSet.Tables.Add(dt);
            thisDataSet.Load(reader, LoadOption.PreserveChanges, thisDataSet.Tables[0]);

            ReportDataSource datasource = new
              ReportDataSource("CourseBySponsor_sp_CoursesBySponsor",
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
