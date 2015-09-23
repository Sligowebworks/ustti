/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 17, 2006
  Description   : - The page functions as an interface to obtain student id and application year 
                    which will be used as parameter to generate individual bio fact sheet report
  Update History: June 9th,2006
                  - Create capability to select the most recent application therefore the user does not 
                    have to browse application id manually
                  - Replace the studentid textbox with student's name
----------------------------------------------------------------------------------------------------------*/
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using USTTI.Data;

public partial class individualbio_default : System.Web.UI.Page
{
    protected string StudentID;
    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        
    }
    protected string DetermineQuery(string strFirstName, string strLastName)
    {
        string strQuery = "";
        if ((strFirstName.Length.Equals(0)) && (strLastName.Length.Equals(0)))
        {
            //nothing
        }
        else
        {
           
            if ((!strFirstName.Length.Equals(0)) && (strLastName.Length.Equals(0)))
            {
                strQuery = "SELECT s.*,c.countryname FROM student s,country c"+
                    " WHERE c.countryid=s.countryid AND s.firstname  LIKE '" + strFirstName + "%' ORDER BY s.firstname ASC";
            }
            else
            {
                if ((strFirstName.Length.Equals(0)) && (!strLastName.Length.Equals(0)))
                {
                    strQuery = "SELECT s.*,c.countryname FROM student s,country c"
                    +" WHERE c.countryid=s.countryid AND lastname LIKE '" + strLastName + "%' ORDER BY s.firstname ASC";
                               
                }
                else
                {
                    if ((!strFirstName.Length.Equals(0)) && (!strLastName.Length.Equals(0)))
                    {
                        strQuery = "SELECT s.*,c.countryname FROM student s,country c"+
                            " WHERE c.countryid=s.countryid AND ((firstname='" + strFirstName + "' AND lastname='" + strLastName + "') " +
                            "OR(firstname='" + strLastName + "' AND lastname='" + strFirstName + "')) ORDER BY s.firstname ASC";
                    }
                }
            }
        }
        return strQuery;
    }
    protected void btnBrowseSID_Click(object sender, EventArgs e)
    {
        tblEntryForm.Visible = false;
        string firstname=txtFirstName.Text.Trim();
        string lastname=txtLastName.Text.Trim();
        if (!firstname.Length.Equals(0) || !lastname.Length.Equals(0))
        {
            StudentDataSource.SelectCommand = DetermineQuery(firstname, lastname);
        }
        else
        {
            StudentDataSource.SelectCommand = "SELECT s.studentid,s.firstname,s.lastname,s.dob,s.lastupdatetime,c.countryname " +
                                              "FROM student s,country c WHERE s.countryid=c.countryid ORDER BY s.lastupdatetime DESC";
        }
        StudentDataSource.DataBind();                                    
        dgStudent.Visible = true;
    }
    protected void SendSID(object sender, EventArgs e)
    {
        dgStudent.Visible = false;
        tblEntryForm.Visible = true;

        txtFirstName.Text = dgStudent.SelectedDataKey.Values[1].ToString().Trim();
        txtLastName.Text = dgStudent.SelectedDataKey.Values[2].ToString().Trim();
        lblCountry.Text = dgStudent.SelectedDataKey.Values[3].ToString().Trim();

        btnBrowseSID.Enabled = false;
        btnBrowseSID.Visible = false;
        btnGenerateReport.Visible = true;
    }
    protected void btnGenerateReport_Click(object sender, EventArgs e)
    {
        StudentID = dgStudent.SelectedDataKey.Values[0].ToString().Trim();
        string ApplicationID = GetApplicationID(StudentID);
        Response.Redirect("BioSheet.aspx?StudentID=" + StudentID + "&ApplicationID=" + ApplicationID);
    }

    public string GetApplicationID(string StudentID)
    {
        USTTIDataAccess data = new USTTIDataAccess();
        string ApplicationID = Convert.ToString(data.GetApplicationID(StudentID));
        return ApplicationID;
    }
}

