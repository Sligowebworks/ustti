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

public partial class reports_biosheet_BioInfoSheet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string StudentID = Request["StudentID"].ToString();
            string ApplicationID = GetApplicationID(StudentID);
                        
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
            ReportViewer1.Visible = true;
            SqlConnection thisConnection = new SqlConnection();
            SqlParameter[] SearchValue = new SqlParameter[1];
            SqlDataReader reader;

            thisConnection.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString.ToString());

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "StudentSheet";
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
              ReportDataSource("BioSheet_StudentSheet",
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
