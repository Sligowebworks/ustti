/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page function as interface to capture user input in database
                    and let user perform edit and store it back in database
  Update History: June 6th, 2006
                  - Change studentid textbox with student's name instead
                  - Omit memo textbox  
                  June 8th, 2006
                  - Change orientationid to become orientation start date. Hide orientationid textbox
                  June 12th, 2006
                  - Change the student's name,date of birth to Label instead of TextBox
                  - Hide main menu and show menu level 1
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
using USTTI.Core;

public partial class applicationeditrecord : UsttiPage
{
    private Decimal StudentID;

    protected void Page_Load(object sender, EventArgs e)
    {
        StudentID = Convert.ToDecimal(Request["StudentID"].ToString());

        if (Page.IsPostBack == false)
        {
            GenerateDateList();
            application_date.GenerateDateList(2006, 2020);
            arrival_date.GenerateDateList(2006, 2020);
            departure_date.GenerateDateList(2006, 2020);
            checkout_date.GenerateDateList(2006, 2020);
            ViewApplicationData(GetID());
        }     
    }

    protected void GenerateDateList()
    {
        int intTodayYear = Convert.ToInt32(DateTime.Now.Year);
        //generate Year List
        for (int i = intTodayYear; i <= intTodayYear + 20; i++)
        {
            YearList.Items.Add(Convert.ToString(i));
        }

    }
    protected void SaveUserInputinEdit(string strAID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get user input
        string strSID = txtSID.Text;
        string strOID = txtOID.Text;
        DateTime strAppDate =Convert.ToDateTime(application_date.GetDate());
        DateTime strArrUS = Convert.ToDateTime(arrival_date.GetDate());
        DateTime strDeptUS =Convert.ToDateTime(departure_date.GetDate());
        string strYear = YearList.SelectedItem.Text;
        string strHotelDC = HotelDCButtonList.SelectedItem.Text;
        DateTime strChkoutDate =Convert.ToDateTime(checkout_date.GetDate());
        string strNeedsFund = NeedsFundRadioButton.SelectedItem.Text;
        string strMemo = "";// txtMemo.Text;
        //create command
        string strQryUpdateFunding;
        strQryUpdateFunding = "UPDATE application SET studentid=" + strSID + ",orientid=" + strOID +
            ",applicdate='" + strAppDate + "',arriveus='" + strArrUS + "',departus='" + strDeptUS + "',year='" + strYear + "',hoteldc='" +
            strHotelDC + "',checkoutdc='" + strChkoutDate + "',needsfunds='"+strNeedsFund+"',memo='"+strMemo+"' WHERE applicationid=" + strAID;
        SqlCommand objComm2 = new SqlCommand(strQryUpdateFunding, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect(WebFolder + "studentadmin/admission/student_application_view.aspx?StudentID=" + StudentID);
    }
    protected void SendOID(object sender, EventArgs e)
    {
        dgOrientation.Visible = false;
        tblEntryForm.Visible = true;
        txtOID.Text = Convert.ToString(dgOrientation.SelectedDataKey.Values[0]);
        DateTime orient_date = Convert.ToDateTime(dgOrientation.SelectedDataKey.Values[1]);
        lblOrientDate.Text = orient_date.ToString("MM-dd-yyyy");
        btnBrowseOID.Visible = false;
        btnSubmit.Visible = true;
    }
    protected void btnBrowseOID_Click(object sender, EventArgs e)
    {
        tblEntryForm.Visible = false;
        dgOrientation.Visible = true;
        btnSubmit.Visible = false;

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
        string strQryApplication = "SELECT a.*,s.firstname,s.lastname,o.date_from FROM application a,student s,orientation o"+
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
                lblOrientDate.Text=dob.ToString("MM-dd-yyyy");
                string AppDate = Convert.ToString(objReader["applicdate"]);
                string ArrDate = Convert.ToString(objReader["arriveus"]);
                string ChkoutDate = Convert.ToString(objReader["checkoutdc"]);
                string DeptDate = Convert.ToString(objReader["departus"]);
                application_date.fillControl(AppDate);
                arrival_date.fillControl(ArrDate);
                checkout_date.fillControl(ChkoutDate);
                departure_date.fillControl(DeptDate);
                YearList.Text = Convert.ToString(objReader["year"]).Trim();
                HotelDCButtonList.SelectedValue = Convert.ToString(objReader["hoteldc"]).Trim();
                NeedsFundRadioButton.SelectedValue = Convert.ToString(objReader["needsfunds"]).Trim();
                //txtMemo.Text = Convert.ToString(objReader["memo"]).Trim();
            }
            objReader.Close();
            objConn.Close();
        }
        catch(SqlException  err)
        {
            Response.Write(err.Message.ToString());
        }
    }
    protected string GetID()
    {
        string strAID;
        strAID = Convert.ToString(Request.QueryString["applicationid"]);
        return strAID;
    }
    
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInputinEdit(GetID());
        }
    }
    
}
