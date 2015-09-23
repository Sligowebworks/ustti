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


public partial class course_student_data : System.Web.UI.Page
{
    
    protected string GetID()
    {
        string strCID=Request.QueryString["courseid"];
        return strCID;
        
    }
    protected string GetTitle()
    {
        string strTitle=Request.QueryString["coursetitle"];
        return strTitle;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
            Label1.Text = "Registered Students for " + GetTitle() + " Course ("+GetID().ToString().Trim()+")";
            StudentCourseDataSource.SelectCommand = "SELECT sc.studentcrseid as id, sc.applicationid," +
                "a.year,a.applicdate,s.studentid,s.firstname,s.lastname,sc.accepted,sc.confirmed," +
                "sc.participat,sc.faxsent,sc.preference,a.hoteldc,ct.countryname" +
                " FROM student s,courses c,studentcourse sc,application a,country ct" +
                " WHERE s.studentid=a.studentid AND a.applicationid=sc.applicationid" +
                " AND c.courseid=sc.courseid AND c.courseyear=a.year AND s.countryid=ct.countryid"+
                " AND sc.courseid='" + GetID() + "'";
            StudentCourseDataSource.DataBind();
            if (dgCourseStudent.Rows.Count == 0)
            {
                Label1.Text = "No Student Registered for This Course";
            }
    }
}
