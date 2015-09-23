/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to show all students receiving aid from one parti
                    cular funder
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

public partial class funder_student_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTitle.Text = "List of Students Receiving Aid from " + Request.QueryString["fundername"].ToString();
        FunderStudentDataSource.SelectCommand = "SELECT s.studentid," +
            "s.firstname,s.lastname,s.dob,f.description,f.amount,c.countryname FROM student s," +
            "funding f,country c WHERE c.countryid=s.countryid AND f.studentid=s.studentid AND f.funderid=" + Request.QueryString["funderid"].ToString()+
            " ORDER BY s.lastname ASC";
        dgStudent.DataBind();
        if (dgStudent.Rows.Count.Equals(0))
        {
            lblMessNull.Text = "No Student Receiving Aid From This Funder";
            lblMessNull.Visible = true;
        }
        else
        {
            lblMessNull.Visible = false;
        }


    }
    
}
