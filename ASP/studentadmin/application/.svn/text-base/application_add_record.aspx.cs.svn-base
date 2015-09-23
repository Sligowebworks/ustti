/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page functions as an interface to capture user input for application information 
                    then store it in database
  Update History: June 6th,2006
                  - Add student's name textbox instead of studentid. Hide studentid textbox
                  - Omit memo textbox
                  June 8th, 2006
                  - Generate application date automatically therefore user don't need to fill up the date
                    manually but it offers option to overide it. The default date is the system date
                  - Generate application year automatically to reduce data entry work for user. It also change
                    its control from dropdown menu to read only textbox instead
                  - Change the orientationid textbox with begin date value. It will be more descriptive for
                    user.
                  - Hidden orientationid in gridview control from user
                  June 13th,2006
                  - Assign session variables studentid,firstname,lastname to label object instead of TextBox
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
using USTTI.Base;
using USTTI.Core;

public partial class applicationaddrecord : UsttiPage
{
    private Decimal StudentID;
    protected void Page_Load(object sender, EventArgs e)
    {
        StudentID = Convert.ToDecimal(Request["StudentID"].ToString());

        if (!Page.IsPostBack)
        {
            initPage();
        }
        else
        {
            //ViewApplicationData(Convert.ToString(Session["applicationid"]));        
        }
    }

    private void initPage()
    {
        txtSID.Text = Convert.ToString(StudentID);

        application_date.GenerateDateList(2006, 2020);
        SetDefaultApplicationDate();
        arrival_date.GenerateDateList(2006, 2020);
        departure_date.GenerateDateList(2006, 2020);
        checkout_date.GenerateDateList(2006, 2020);
        RequiredFieldValidator1.Enabled = false;
        RequiredFieldValidator2.Enabled = false;
        application_date.setValidatorOff();
        arrival_date.setValidatorOff();
        departure_date.setValidatorOff();
        checkout_date.setValidatorOff();
        RequiredFieldValidator3.Enabled = false;
        
        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();
        USTTI.Base.Student StudentInfo = data.GetStudentInfo(StudentID);

        if (lblStartDate.Text.Length.Equals(0))
        {
            btnBrowseOID.Visible = true;
        }
        else
        {
            btnBrowseOID.Visible = false;
        }

        lblStudentName.Text = StudentInfo.FirstName + " " + StudentInfo.LastName;        
    }

    protected string CountryName()
    {
        string strCountryName = "";
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;        
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        string strQueryCountryName = "SELECT countryname FROM country WHERE countryid=" +
            "(SELECT countryid FROM student WHERE studentid=" + Session["studentid"].ToString() + ")";
        SqlCommand objComm = new SqlCommand(strQueryCountryName, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            strCountryName = Convert.ToString(objReader["countryname"]);
        }
        objReader.Close();
        objConn.Close();
        return strCountryName;
    }

    protected void SaveUserInput()
    {
        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        Decimal ApplicationID = data.GetNextApplicationID();

        Application newApplication = new Application();

        newApplication.ApplicationID = ApplicationID;
        newApplication.SID = txtSID.Text.Trim();
        newApplication.OID = txtOID.Text.Trim();
        newApplication.AppDate = application_date.GetDate().Trim();
        newApplication.ArrUS = arrival_date.GetDate().Trim();
        newApplication.DeptUS = departure_date.GetDate().Trim();
        newApplication.Year = lblYear.Text.Trim();
        newApplication.HotelDC = HotelDCButtonList.SelectedItem.Text.Trim();
        newApplication.ChkoutDate = checkout_date.GetDate().Trim();
        newApplication.NeedsFund = NeedsFundRadioButton.SelectedItem.Text.Trim();
        newApplication.Memo = "";

        data.InsertApplicationRecord(newApplication);        
    }

    protected void SetDefaultApplicationDate()
    {
        string strTodayDate = DateTime.Now.Date.ToString().Trim();
        string strCurrentYear = DateTime.Now.Year.ToString().Trim();
        application_date.fillControl(strTodayDate);        
        lblYear.Text = strCurrentYear;
    }
            
    protected void SendOID(object sender, EventArgs e)
    {
        dgOrientation.Visible = false;
        tblEntryForm.Visible = true;
        txtOID.Text = Convert.ToString(dgOrientation.SelectedDataKey.Values[0]);
        DateTime orient_date = Convert.ToDateTime(dgOrientation.SelectedDataKey.Values[1]);
        lblStartDate.Text = orient_date.ToString("MM-dd-yyyy");
        btnBrowseOID.Visible = false;
        RequiredFieldValidator3.Enabled = true;
        application_date.setValidatorOn();
        arrival_date.setValidatorOn();
        departure_date.setValidatorOn();
        checkout_date.setValidatorOn();
        RequiredFieldValidator2.Enabled = true;
        btnContinue.Visible = true;
        btnSaveBack.Visible = true;
        
    }

    protected void btnBrowseOID_Click(object sender, EventArgs e)
    {
        tblEntryForm.Visible = false;
        dgOrientation.Visible = true;
        
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (IsDuplicate())
            {
                Response.Redirect("~/studentadmin/admission/student_courseload_record.aspx?StudentID=" + StudentID);
            }
            else
            {
                SaveUserInput();
                Response.Redirect("~/studentadmin/admission/student_courseload_record.aspx?StudentID=" + StudentID);
            }
        }
    }
    protected void ViewApplicationData(string strAID)
    {
        try
        {
            //define connection string
            string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
            //open connection with database
            SqlConnection objConn = new SqlConnection(strConn);
            objConn.Open();
            //create query command
            string strQryApplication = "SELECT a.*,s.firstname,s.lastname,o.date_from FROM application a,student s,orientation o" +
                " WHERE s.studentid=a.studentid AND o.orientid=a.orientid AND a.applicationid=" + strAID;
            SqlCommand objComm = new SqlCommand(strQryApplication, objConn);
            SqlDataReader objReader;
            objReader = objComm.ExecuteReader();
            while (objReader.Read())
            {
                txtSID.Text = Convert.ToString(objReader["studentid"]).Trim();
                lblStudentName.Text = Convert.ToString(objReader["firstname"].ToString().Trim() + " " + objReader["lastname"].ToString().Trim());
                txtOID.Text = Convert.ToString(objReader["orientid"]).Trim();
                DateTime dob = Convert.ToDateTime(objReader["date_from"]);
                lblStartDate.Text = dob.ToString("MM-dd-yyyy");
                string AppDate = Convert.ToString(objReader["applicdate"]);
                string ArrDate = Convert.ToString(objReader["arriveus"]);
                string ChkoutDate = Convert.ToString(objReader["checkoutdc"]);
                string DeptDate = Convert.ToString(objReader["departus"]);
                application_date.fillControl(AppDate);
                arrival_date.fillControl(ArrDate);
                checkout_date.fillControl(ChkoutDate);
                departure_date.fillControl(DeptDate);
                lblYear.Text = Convert.ToString(objReader["year"]).Trim();
                HotelDCButtonList.SelectedValue = Convert.ToString(objReader["hoteldc"]).Trim();
                NeedsFundRadioButton.SelectedValue = Convert.ToString(objReader["needsfunds"]).Trim();
                //txtMemo.Text = Convert.ToString(objReader["memo"]).Trim();
            }
            objReader.Close();
            objConn.Close();
        }
        catch (SqlException err)
        {
            Response.Write(err.Message.ToString());
        }
    }

    protected void btnSaveBackLater_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (IsDuplicate())
            {
                Response.Redirect(WebFolder + "studentadmin/admission/student_search_record.aspx");
            }
            else
            {
                SaveUserInput();
                Response.Redirect(WebFolder + "studentadmin/admission/student_search_record.aspx");
            }
        }              
    }

    private bool IsDuplicate()
    {
        bool IsDuplicate = false;

        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        string sql = "SELECT applicationid FROM application WHERE studentid=" + StudentID;

        DataTable dt = data.Fill(sql);

        if (dt.DefaultView.Count > 0)
            IsDuplicate = true;

        return IsDuplicate;
    }    
}
