/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date   : May 12, 2006
  Description   : - The page function as interface to show the historical view of application
                    for one student
  Update History: June 12th,2002
                  - Capture studentid session variable instead of query string
----------------------------------------------------------------------------------------------------------*/
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
using System.Data;
using System.Data.SqlClient;
using USTTI.Core;

public partial class student_application_view : UsttiPage
{
    private Decimal StudentID;    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        StudentID = Convert.ToDecimal(Request["StudentID"].ToString());

        if (!Page.IsPostBack)
        {
            initPage();
        }        
    }

    private void initPage()
    {
        
        
        lblTitle.Text = "Student's Application History";

        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        USTTI.Base.Student StudentInfo = data.GetStudentInfo(StudentID);
        student_info_header.SetObjectValue(StudentInfo.FirstName, StudentInfo.LastName, StudentInfo.DOB.ToString(), StudentInfo.CountryName);

        string sql = "SELECT a.*,s.firstname,s.lastname,c.countryname,o.date_from " +
                "FROM application a,student s,country c,orientation o WHERE s.studentid=a.studentid AND c.countryid=s.countryid " +
                "AND o.orientid=a.orientid AND a.studentid='" + StudentID + "' ORDER BY a.applicdate DESC";

        DataTable dt = data.Fill(sql);

        dgApplication.DataSource = dt;
        dgApplication.DataBind();

        if (dt.DefaultView.Count.Equals(0))
        {
            lblMessNull.Text = "No Application History for This Student";
            lblMessNull.Visible = true;
        }
        else
        {            
            lblMessNull.Visible = false;
        }
    }

    protected void btnAddApplication_Click(object sender, EventArgs e)
    {
        Response.Redirect(WebFolder + "studentadmin/application/application_add_record.aspx?StudentID=" + StudentID);
    }
}
