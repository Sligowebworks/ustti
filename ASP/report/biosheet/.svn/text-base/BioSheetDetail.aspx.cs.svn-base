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

public partial class report_biosheet_BioSheetDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string StudentID = Request["StudentID"].ToString();
            string ApplicationID = Request["ApplicationID"].ToString();

            if (!Page.IsPostBack)
            {
                loadReport(StudentID, ApplicationID);
            }
        }
        catch (Exception ex)
        {

        }
    }

    public string GetApplicationID(string StudentID)
    {
        USTTIDataAccess data = new USTTIDataAccess();
        string ApplicationID = Convert.ToString(data.GetApplicationID(StudentID));
        return ApplicationID;
    }

    private void loadReport(string StudentID, string ApplicationID)
    {
        try
        {
            string USTTI_REPORTS_TEMPLATES = ConfigurationManager.AppSettings["ustti.new.reports.templates"];
            RPBioSheet.Visible = true;
            RPBioSheet.LocalReport.ReportPath = Server.MapPath(USTTI_REPORTS_TEMPLATES + "\\biosheet\\BioSheetDetail.rdlc");
            SqlConnection thisConnection = new SqlConnection();
            SqlParameter[] SearchValue = new SqlParameter[1];
            SqlDataReader reader;

            thisConnection.ConnectionString = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_StudentSheet";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Connection = thisConnection;

            cmd.Parameters.Add(new SqlParameter("@StudentID", SqlDbType.NVarChar, 10));
            cmd.Parameters.Add(new SqlParameter("@ApplicationID", SqlDbType.NVarChar, 10));
            cmd.Parameters["@StudentID"].Value = StudentID;
            cmd.Parameters["@ApplicationID"].Value = ApplicationID;
            thisConnection.Open();
            reader = cmd.ExecuteReader();

            DataSet thisDataSet = new DataSet();
            DataTable dt = new DataTable();
            thisDataSet.Tables.Add(dt);
            thisDataSet.Load(reader, LoadOption.PreserveChanges, thisDataSet.Tables[0]);

            ReportDataSource datasource = new
              ReportDataSource("BioSheet_sp_StudentSheet",
              thisDataSet.Tables[0]);

            RPBioSheet.LocalReport.DataSources.Clear();
            RPBioSheet.LocalReport.DataSources.Add(datasource);
            RPBioSheet.LocalReport.Refresh();

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}
