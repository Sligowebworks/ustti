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
    protected void GenerateDateList()
    {
        //initialization
        int intTodayDate = Convert.ToInt32(DateTime.Now.Day);
        int intTodayMonth = Convert.ToInt32(DateTime.Now.Month);
        int intTodayYear = Convert.ToInt32(DateTime.Now.Year);
        int intDaysInMonth = Convert.ToInt32(DateTime.DaysInMonth(intTodayYear, intTodayMonth));
        //generate month list
        for (int z = 1; z <= 12; z++)
        {
            FromMonthList.Items.Add(Convert.ToString(z));
            ToMonthList.Items.Add(Convert.ToString(z));
        }
        //generate day list
        for (int j = 1; j <= intDaysInMonth; j++)
        {
            FromDayList.Items.Add(Convert.ToString(j));
            ToDayList.Items.Add(Convert.ToString(j));

        }
        //generate Year List
        for (int i = intTodayYear; i <= intTodayYear + 20; i++)
        {
            FromYearList.Items.Add(Convert.ToString(i));
            ToYearList.Items.Add(Convert.ToString(i));
            YearList.Items.Add(Convert.ToString(i));
        }

    }
    protected string GetFromDate()
    {
        string strMonth = FromMonthList.SelectedItem.Text;
        string strDay = FromDayList.SelectedItem.Text;
        string strYear = FromYearList.SelectedItem.Text;
        string strFromDate = strMonth + "/" + strDay + "/" + strYear;
        return strFromDate;
    }
    protected string GetToDate()
    {
        string strMonth = ToMonthList.SelectedItem.Text;
        string strDay = ToMonthList.SelectedItem.Text;
        string strYear = ToYearList.SelectedItem.Text;
        string strToDate = strMonth + "/" + strDay + "/" + strYear;
        return strToDate;
    }
    
    protected void SaveUserInputinEdit(string strFID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get user input
        string strSID = txtSID.Text;
        string strFunderID = FunderList.SelectedValue;
        string strFundTypID = FundTypeList.SelectedValue;
        string strStartDate = GetFromDate();
        string strEndDate = GetToDate();
        string strYear = YearList.SelectedValue;
        string strDesc = txtDesc.Text;
        decimal flAmount = Convert.ToDecimal(txtAmount.Text);
        string strPIO = txtPIO.Text;
        //create command
        string strQryUpdateFunding;
        strQryUpdateFunding = "UPDATE funding SET fundtypid=" + strFundTypID + ",funderid="+strFunderID +
            ",begindate='"+ strStartDate+"',enddate='"+ strEndDate+"',year='"+ strYear+"',description='"+strDesc+"',amount="+
            flAmount +",pio_p_no='" + strPIO +"' WHERE fundid=" + strFID;
        SqlCommand objComm2 = new SqlCommand(strQryUpdateFunding, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("studentfund_data.aspx");
    }
    protected void ViewFundingData(string strFID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQryFundType = "SELECT * FROM funding WHERE fundid=" + strFID;
        SqlCommand objComm = new SqlCommand(strQryFundType, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            
            txtSID.Text=Convert.ToString(objReader["studentid"]).Trim();
            txtSID.Enabled = false;
            FunderList.Text = Convert.ToString(objReader["funderid"]).Trim(); ;
            FundTypeList.Text = Convert.ToString(objReader["fundtypid"]).Trim(); ;
            DateTime StartDate = Convert.ToDateTime(objReader["begindate"]);
            FromMonthList.Text = Convert.ToString(StartDate.Month).Trim();
            FromDayList.Text = Convert.ToString(StartDate.Day).Trim();
            FromYearList.Text = Convert.ToString(StartDate.Year).Trim();
            DateTime EndDate = Convert.ToDateTime(objReader["enddate"]);
            ToMonthList.Text = Convert.ToString(EndDate.Month).Trim();
            ToDayList.Text = Convert.ToString(EndDate.Day).Trim();
            ToYearList.Text = Convert.ToString(EndDate.Year).Trim();
            YearList.Text = Convert.ToString(objReader["year"]).Trim();
            txtDesc.Text = Convert.ToString(objReader["description"]).Trim();
            txtAmount.Text = Convert.ToString(objReader["amount"]).Trim();
            txtPIO.Text = Convert.ToString(objReader["pio_p_no"]).Trim();
       }
       objReader.Close();
       objConn.Close();
    }
    protected string GetID()
    {
        string strFID;
        strFID = Convert.ToString(Request.QueryString["fundid"]);
        return strFID;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GenerateDateList();
            RequiredFieldValidator1.Enabled = false;
            ViewFundingData(GetID());
        }
        else
        {
            RequiredFieldValidator1.Enabled = true;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInputinEdit(GetID());
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

        txtSID.Text = Convert.ToString(dgStudent.SelectedDataKey.Values[0]);
    }
}
