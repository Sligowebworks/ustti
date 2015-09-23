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

public partial class course_courseadmin_course_assign_sponsor : System.Web.UI.Page
{
    protected string GetID()
    {
        string strCID = Request.QueryString["courseid"];
        return strCID;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        
           
       
            StudentCourseDataSource1.SelectCommand = "SELECT sc.courseid,sc.studentcrseid,  sc.applicationid," +
                    "a.year,s.studentid,s.firstname,s.lastname,sc.accepted,sc.confirmed," +
                    "sc.participat,sc.faxsent,sc.preference,a.hoteldc" +
                    " FROM student s,courses c,studentcourse sc,application a" +
                    " WHERE s.studentid=a.studentid AND a.applicationid=sc.applicationid" +
                    " AND c.courseid=sc.courseid AND c.courseyear=a.year AND sc.courseid='" + GetID() + "'";
            dgStudentCourse.DataBind();
            StudentCourseDataSource1.DataBind();
       
    }
}
