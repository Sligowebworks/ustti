/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface that let user to add courses taken by applicant
                    and store it in database
  Update History: June 6th, 2006
                  - Initially this page capture the student id and application id from user directly. Now
                    this page receives input from string query generated from student info page
                  - Omit 5 courses max restriction
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

public partial class courseload_student_record : System.Web.UI.Page
{
    //Class Properties
    private string strSID;
    private string strAID;
    private string strCID;
    private string strAccepted;
    private string strConfirmed;
    private string strParticipated;
    private string strFaxSent;
    private string strPref;
    //Class Method
    /*protected int NumberOfCourseLoad(string strSID, string strAID)
    {   
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //check #of courses taken no more than 5 courses
        int intCounter = 0;
        string strQueryMaxCourses = "SELECT count(*) as counter FROM studentcourse" +
                " WHERE studentid=" + strSID + " AND applicationid=" + strAID;
        SqlCommand objComm2 = new SqlCommand(strQueryMaxCourses, objConn);
        SqlDataReader objReader2;
        objReader2 = objComm2.ExecuteReader();
        while (objReader2.Read())
        {
            intCounter = Convert.ToInt16(objReader2["counter"]);
        }
        objReader2.Close();
        objConn.Close();
        return intCounter;
    }*/
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
    protected void AddCourseLoad()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique studentcourse id
        int intSCID = 0;
        string strQuerySCID = "SELECT MAX(studentcrseid) as SCID FROM studentcourse";
        SqlCommand objComm1 = new SqlCommand(strQuerySCID, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {

            if (objReader1.IsDBNull(0) == true)
            {
                intSCID = 1;
            }
            else
            {
                intSCID = Convert.ToInt32(objReader1["SCID"]) + 1;
            }
        }
        objReader1.Close();
        //get user input
        strSID = txtSID.Text;
        strAID = txtAID.Text; 
        strCID = txtCID.Text;
        strAccepted = AcceptedButtonList.SelectedValue;
        strConfirmed = ConfirmButtonList.SelectedValue;
        strParticipated = ParticipatButtonList.SelectedValue;
        strFaxSent = FaxButtonList.SelectedValue;
        strPref = ""; // txtPref.Text;
        //int intCounter = NumberOfCourseLoad(strSID, strAID);
        int intCrsDuplicate = CheckDupCourse(strSID, strAID,strCID);
        lblDupMessage.Visible = false;
        /*if (intCounter >= 5)
        {
            lblMaxMessage.Visible = true;
        }
        else if(intCrsDuplicate>=1)
        {
            lblDupMessage.Visible=true;
        }*/
        if (intCrsDuplicate >= 1)
        {
            lblDupMessage.Visible = true;
        }
        else
        {
            //create command
            string strQryInsStudentCourse;
            strQryInsStudentCourse = "INSERT INTO studentcourse VALUES(" + intSCID + ","+strSID+ "," + strAID +
                ",'" + strCID + "','" + strAccepted + "','" + strConfirmed + "','" + strParticipated + "','" + strFaxSent + "','" + strPref +"','')";
            SqlCommand objComm3 = new SqlCommand(strQryInsStudentCourse, objConn);
            objComm3.ExecuteNonQuery();
            lblDupMessage.Visible = false;
        }
        //close connection 
        objConn.Close();
    }
    protected string CheckAppDate()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        string strAppDate="";
        string strSQLAppDate = "SELECT applicdate FROM application WHERE applicationid=" + Request.QueryString["applicationid"];
        SqlCommand Comm = new SqlCommand(strSQLAppDate, objConn);
        SqlDataReader objReader;
        objReader = Comm.ExecuteReader();
        while (objReader.Read())
        {
            strAppDate = objReader["applicdate"].ToString().Trim();
        }
        return strAppDate;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            txtSID.Text = Request.QueryString["studentid"].ToString().Trim();
            txtAID.Text = Request.QueryString["applicationid"].ToString().Trim();
            txtAppDate.Text = CheckAppDate();
            txtStudentName.Text = Request.QueryString["firstname"].ToString().Trim() + " " +
                                  Request.QueryString["lastname"].ToString().Trim();
            //txtAppYear.Text = Request.QueryString["appyear"].ToString().Trim();
            txtCountry.Text = Request.QueryString["countryname"].ToString().Trim();
            ViewCourseLoadDetail();
            tblSubPageEntryDetail.Visible = false;
        }
        else
        {
            //Nothing
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        tblSubPageEntryDetail.Visible = true;
        btnAddCourse2.Visible = false;
    }
    /*protected void btnBrowseSID_Click(object sender, EventArgs e)
    {
        tblEntryForm.Visible = false;
        dgStudent.Visible = true;
        
    }
    protected void SendSID(object sender, EventArgs e)
    {
        dgStudent.Visible = false;
        tblEntryForm.Visible = true;
        tblEntryForm2.Visible = true;
        txtSID.Text=Convert.ToString(dgStudent.SelectedDataKey.Values[0]);
        btnBrowseSID.Enabled = false;
        btnBrowseSID.Visible = false;
    }*/
    protected void ViewCourseLoadDetail()
    {
        CourseLoadDataSource.SelectCommand = "SELECT sc.studentcrseid as id, sc.applicationid," +
                   "a.year,s.firstname,sc.studentid,sc.courseid,c.crsetitle1,s.lastname,sc.accepted,sc.confirmed," +
                   "sc.participat,sc.faxsent,sc.preference,a.hoteldc" +
                   " FROM student s,courses c,studentcourse sc,application a" +
                   " WHERE s.studentid=a.studentid AND a.applicationid=sc.applicationid" +
                   " AND c.courseid=sc.courseid AND sc.applicationid='" + txtAID.Text + "'";
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
        }
    }
    /*protected void SendAID(object sender, EventArgs e)
    {
        dgApplication.Visible = false;
        tblEntryForm.Visible = true;
        tblEntryForm2.Visible = true;
        txtAID.Text = Convert.ToString(dgApplication.SelectedDataKey.Values[0]);
        tblCourseLoadDetail.Visible = true;
        btnBrowseSID.Enabled = false;
        btnBrowseSID.Visible = false;
        btnBrowseAID.Visible = false;
        btnBrowseAID.Enabled = false;
        ViewCourseLoadDetail();
    }*/
    protected void EditRow(object sender, GridViewEditEventArgs e)
    {
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
    /* protected void btnBrowseAID_Click(object sender, EventArgs e)
    {
        tblEntryForm.Visible = false;
        tblEntryForm2.Visible = false;
        ApplicationDataSource.SelectCommand = "SELECT a.* FROM application a" +
                                              " WHERE a.studentid=" + txtSID.Text;
        ApplicationDataSource.DataBind();
        dgApplication.Visible = true;
        if (dgApplication.Rows.Count == 0)
        {
            lblNullMessage.Visible = true;
        }
    }*/
    protected void btnBrowseCourse_Click(object sender, EventArgs e)
    {
        tblEntryForm.Visible = false;
        tblCourseLoadDetail.Visible = false;
        dgCourse.Visible = true;
    }
    protected void SendCID(object sender, EventArgs e)
    {
        tblEntryForm.Visible = true;
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
        /*string strSID = txtSID.Text;
        string strAID = txtAID.Text;
        int intCounter = NumberOfCourseLoad(strSID, strAID);
        if (intCounter <= 5)
        {
            lblMaxMessage.Visible = false;
        }*/
        ViewCourseLoadDetail();
    }
}
