/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page function as interface to show duplication of student information
                    based on first name,last name, and date of birth
                  
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

public partial class student_add_verify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string strFirstName = Request.QueryString["firstname"];
            string strLastName = Request.QueryString["lastname"];
            string strDOB = Request.QueryString["dob"];
            string strQryDupStudent;
            strQryDupStudent = "SELECT studentid,firstname,lastname,dob FROM student " +
                         "WHERE ((firstname='" + strFirstName + "' OR lastname='" + strLastName + "') " +
                         "OR(firstname='" + strLastName + "' OR lastname='" + strFirstName + "'))" +
                         "AND(dob='" + strDOB + "')";
            StudentDataSource.SelectCommand = strQryDupStudent;
            StudentDataSource.DataBind();
            dgStudent.DataBind();
        }
             

    }
}
