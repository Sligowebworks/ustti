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
public partial class individualbio_default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
           
        }
        else
        {

        }
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
        ViewState.Add("studentid", dgStudent.SelectedDataKey.Values[0].ToString().Trim());
        txtFirstName.Text = dgStudent.SelectedDataKey.Values[1].ToString().Trim();
        txtLastName.Text = dgStudent.SelectedDataKey.Values[2].ToString().Trim();
        lblCountry.Text = dgStudent.SelectedDataKey.Values[3].ToString().Trim();
        btnBrowseSID.Enabled = false;
        btnBrowseSID.Visible = false;
        btnGenerateReport.Visible = true;
    }
    protected void btnGenerateReport_Click(object sender, EventArgs e)
    {
        //get the most recent application id
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        string strAppIDQuery = "SELECT  MAX(applicationid) AS applicationid FROM application WHERE studentid=" + ViewState["studentid"].ToString().Trim();
        SqlCommand Comm = new SqlCommand(strAppIDQuery, objConn);
        SqlDataReader objReader;
        objReader = Comm.ExecuteReader();
        string strAID="";
        while (objReader.Read())
        {
            strAID = objReader["applicationid"].ToString().Trim();
        }
        Response.Redirect("individualbioinfosheet_report.aspx?studentid="+ViewState["studentid"]+"&applicationid="+strAID);
    }
}

