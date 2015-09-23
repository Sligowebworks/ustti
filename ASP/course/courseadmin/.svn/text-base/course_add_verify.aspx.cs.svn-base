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

public partial class course_courseadmin_course_add_record : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string strCourseCode = Request.QueryString["coursecode"];
            string strQryDupCourse;
            strQryDupCourse = "SELECT c.*,s.sponsname FROM courses c,sponsors s WHERE s.sponsid=c.prisponsid AND coursecode='" + strCourseCode+"'";
            Label1.Text = "Duplicate Course Code Found in Database";
            CourseDataSource.SelectCommand = strQryDupCourse;
            dgCourse.DataBind();
            dgCourse.Visible = true;
        }
     }

}
