/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface that let user to add courses taken by applicant
                    and store it in database
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

public partial class courseload_add_record : System.Web.UI.Page
{
    protected int NumberOfCourseLoad(string strSID, string strAID)
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
        string strSID = txtSID.Text;
        string strAID = txtAID.Text; 
        string strCID = txtCID.Text;
        string strAccepted = AcceptedButtonList.SelectedValue;
        string strConfirmed = ConfirmButtonList.SelectedValue;
        string strParticipated = ParticipatButtonList.SelectedValue;
        string strFaxSent = FaxButtonList.SelectedValue;
        string strPref = txtPref.Text;
        int intCounter = NumberOfCourseLoad(strSID, strAID);
        if (intCounter >= 5)
        {
            lblMaxMessage.Visible = true;
        }
        else
        {
            //create command
            string strQryInsStudentCourse;
            strQryInsStudentCourse = "INSERT INTO studentcourse VALUES(" + intSCID + "," + strSID + "," + strAID +
                ",'" + strCID + "','" + strAccepted + "','" + strConfirmed + "','" + strParticipated + "','" + strFaxSent + "','" + strPref +
                "','')";
            SqlCommand objComm3 = new SqlCommand(strQryInsStudentCourse, objConn);
            objComm3.ExecuteNonQuery();
        }
        //close connection 
        objConn.Close();
        //refresh data grid
        CourseLoadDataSource.SelectCommand = "SELECT cl.studentcrseid,cl.courseid,c.crsetitle1,c.trainfrom,c.trainto,c.slots " +
            "FROM courses c, studentcourse cl WHERE c.courseid=cl.courseid AND cl.studentid=" + strSID + " AND cl.applicationid=" + strAID;
        dgCourseLoad.DataBind();
        btnFinalize.Visible = true;
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CompareValidator1.Enabled = false;
            tblCourseLoadDetail.Visible = false;
            tblEntryForm2.Visible = false;
        }
        else
        {
            
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Response.Redirect("courseload_confirm.aspx");
        }
    }
    protected void btnBrowseSID_Click(object sender, EventArgs e)
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
        
    }
    protected void SendAID(object sender, EventArgs e)
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
        CompareValidator1.Enabled = true;
    }
    protected void btnBrowseAID_Click(object sender, EventArgs e)
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
    }
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
        
    }
    protected void btnAddCourse_Click(object sender, EventArgs e)
    {
        AddCourseLoad();
    }
    protected void DeleteRow(object sender, EventArgs e  )
    {
        string strSID = txtSID.Text;
        string strAID = txtAID.Text;
        int intCounter = NumberOfCourseLoad(strSID, strAID);
        if (intCounter < 5)
        {
            lblMaxMessage.Visible = false;
        }
        CourseLoadDataSource.SelectCommand = "SELECT cl.studentcrseid,cl.courseid,c.crsetitle1,c.trainfrom,c.trainto,c.slots " +
            "FROM courses c, studentcourse cl WHERE c.courseid=cl.courseid AND cl.studentid=" + strSID + " AND cl.applicationid=" + strAID;
        dgCourseLoad.DataBind();
        dgCourseLoad.Visible = true;
    }
}
