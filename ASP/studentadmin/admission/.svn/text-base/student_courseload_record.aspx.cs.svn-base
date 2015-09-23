/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : June 8th, 2006
  Description   : - The page functions as an interface that let user to add courses taken by applicant
                    and store it in database
  Update History: June 12th,2006
                  - Add student header info
                  - Using session variable instead of query string
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
using System.Data.SqlClient;
using USTTI.Core;

public partial class student_courseload_record : UsttiPage
{    
    private Decimal StudentID;

    protected void Page_Load(object sender, EventArgs e)
    {
        StudentID = Convert.ToDecimal(Request["StudentID"].ToString());

        if (! Page.IsPostBack )
        {
            initPage();           
        }
    }

    private void initPage()
    {
        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();
        USTTI.Base.Student StudentInfo = data.GetStudentInfo(StudentID);
        student_header_info.SetObjectValue(StudentInfo.FirstName, StudentInfo.LastName, StudentInfo.DOB.ToString(), StudentInfo.CountryName);
        ViewCourseLoadDetail();
        tblSubPageEntryDetail.Visible = false;
    }
    
    protected int CheckDupCourse(string strSID, string strAID,string strCID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //check #duplicate courses
        int intCounter = 0;
        string strQueryDupCourses = "SELECT count(*) as counter FROM studentcourse" +
                " WHERE applicationid=" + strAID+" AND courseid='"+strCID+"'";
        SqlCommand objComm2 = new SqlCommand(strQueryDupCourses, objConn);
        SqlDataReader objReader2;
        objReader2 = objComm2.ExecuteReader();
        while (objReader2.Read())
        {
            intCounter = Convert.ToInt16(objReader2["counter"]);
        }
        objReader2.Close();
        objConn.Close();
        return intCounter;
    }

    protected bool IsDuplicate(string StudentID, string ApplicationID, string CourseID)
    {
        bool trueStatement = false;

        string sql = "SELECT * FROM studentcourse" +
                " WHERE applicationid=" + ApplicationID + " AND courseid='" + CourseID + "'" +
                " AND studentid='" + StudentID + "'";

        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        DataTable dt = data.Fill(sql);

        if (dt.DefaultView.Count > 0)
            trueStatement = true;

        return trueStatement;
    }

    protected void AddCourseLoad()
    {
        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        Decimal EnrollmentID = data.GetNextStudentCourseID();

        string sql = "SELECT * FROM application WHERE studentid=" + StudentID;

        DataTable dt = data.Fill(sql);
        
        if ( dt.DefaultView.Count.Equals(0) ) 
        {
            lblNullMessage3.Visible = true;
            lblNullMessage3.Text = "This student does not have application record";
            lblNullMessage2.Visible = false;
            return;
        }        

        USTTI.Base.Enrollment enrollment = new USTTI.Base.Enrollment();
        enrollment.EnrollmentID = Convert.ToString(EnrollmentID);
        enrollment.StudentID = Convert.ToString(StudentID);
        enrollment.CourseID = txtCID.Text;
        enrollment.ApplicationID = dt.Rows[0]["applicationid"].ToString();
        enrollment.Accepted = AcceptedButtonList.SelectedValue;
        enrollment.Confirmed = ConfirmButtonList.SelectedValue;
        enrollment.Participated = ParticipatButtonList.SelectedValue;
        enrollment.FaxSent = FaxButtonList.SelectedValue;
        enrollment.Pref = "";
        enrollment.Year = DateTime.Now.Year.ToString().Trim();

        if (IsDuplicate(enrollment.StudentID, enrollment.ApplicationID, enrollment.CourseID))
        {
            lblDupMessage.Visible = true;
            return;
        }
        else
        {
            data.InsertEnrollmentRecord(enrollment);
        }
    }    

    protected void btnSubmit_Click(object sender, EventArgs e)
    {        
        tblSubPageEntryDetail.Visible = true;
        btnAddCourse2.Visible = false;
    }

    protected void ViewCourseLoadDetail()
    {
        CourseLoadDataSource.SelectCommand = "SELECT sc.studentcrseid as id, sc.applicationid,a.applicdate," +
                   "s.firstname,sc.studentid,sc.courseid,c.crsetitle1,s.lastname,sc.accepted,sc.confirmed," +
                   "sc.participat,sc.faxsent,sc.preference,a.hoteldc" +
                   " FROM student s,courses c,studentcourse sc,application a" +
                   " WHERE s.studentid=a.studentid AND a.applicationid=sc.applicationid" +
                   " AND c.courseid=sc.courseid AND sc.studentid='" + StudentID + "' ORDER BY a.applicdate DESC";
        CourseLoadDataSource.DataBind();
        dgCourseLoad.DataBind();
        if (dgCourseLoad.Rows.Count.Equals(0))
        {
            lblNullMessage2.Visible = true;
            lblNullMessage2.Text = "No Course Registered for This Student";
        }
        else
        {
            lblNullMessage2.Visible = false;
            dgCourseLoad.Visible = true;
            if (Session["mode"] == "add")
            {
                btnContinue.Visible = true;
                btnSaveBack.Visible = true;
            }
            else
            {
                btnContinue.Visible = false;
                btnSaveBack.Visible = false;
            }
        }
    }
    
    protected void EditRow(object sender, GridViewEditEventArgs e)
    {
        lblDupMessage.Visible = false;
        ViewCourseLoadDetail();
    }
    protected void UpdateRow(object sender, GridViewUpdateEventArgs  e)
    {
        ViewCourseLoadDetail();
    }
    protected void CancelEdit(object sender,GridViewCancelEditEventArgs e)
    {
        ViewCourseLoadDetail();
    }
    protected void btnBrowseCourse_Click(object sender, EventArgs e)
    {
        btnSaveBack.Visible = false;
        btnContinue.Visible = false;
        lblDupMessage.Visible = false;
        tblCourseLoadDetail.Visible = false;
        if (txtCID.Text.Length.Equals(0))
        {
            CourseDataSource.SelectCommand = "SELECT courseid, crsetitle1 FROM courses ORDER BY courseid DESC";
        }
        else
        {
            CourseDataSource.SelectCommand = "SELECT courseid, crsetitle1 FROM courses WHERE courseid="+txtCID.Text.Trim();
        }
        dgCourse.DataBind();
        dgCourse.Visible = true;
    }

    protected void SendCID(object sender, EventArgs e)
    {
        tblCourseLoadDetail.Visible = true;
        btnAddCourse.Visible = true;
        dgCourse.Visible = false;
        txtCID.Text = Convert.ToString(dgCourse.SelectedDataKey.Values[0]);
        lblDupMessage.Visible = false;
    }

    protected void btnAddCourse_Click(object sender, EventArgs e)
    {
        if (Page.IsValid.Equals(true))
        {
            AddCourseLoad();
            ViewCourseLoadDetail();
        }
    }

    protected void DeleteRow(object sender, EventArgs e  )
    {
        lblDupMessage.Visible = false;
        ViewCourseLoadDetail();
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {

        Response.Redirect(WebFolder + "studentadmin/admission/student_funding_record.aspx?StudentID=" + StudentID);
    }

    protected void btnSaveBackLater_Click(object sender, EventArgs e)
    {        
        Response.Redirect(WebFolder + "studentadmin/admission/student_search_record.aspx");
    }
}
