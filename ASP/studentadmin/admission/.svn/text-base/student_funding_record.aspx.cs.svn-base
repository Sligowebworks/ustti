/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : June 8th, 2006
  Description   : - The page functions as an interface to assign student with fund sources
                    and regardless application year
                  - It enables user to add more than one funding resources
  Update History: June 12th, 2006
                  - Add student info header control
                  - Using session variable instead of query string
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

public partial class student_funding_record : UsttiPage
{
    protected Decimal StudentID;

    protected void Page_Load(object sender, EventArgs e)
    {
        StudentID = Convert.ToDecimal(Request["StudentID"].ToString());

        if (!Page.IsPostBack)
        {
            initPage();
        }        
    }

    private void initPage()
    {
        InitiateFunderList();
        InitiateFundTypeList();
        start_date.GenerateDateList(2006, 2020);
        end_date.GenerateDateList(2006, 2020);

        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();
        USTTI.Base.Student StudentInfo = data.GetStudentInfo(StudentID);
        
        student_info_header.SetObjectValue(StudentInfo.FirstName, StudentInfo.FirstName, StudentInfo.DOB.ToString(), StudentInfo.CountryName);
        ViewFundingListDetail();
        tblSubPageEntryDetail.Visible = false;
    }

    protected bool IsDuplicate(string ApplicationID, string FunderID)
    {
        bool TrueStatement = false;

        string sql = "SELECT * FROM funding" +
                " WHERE applicationid=" + ApplicationID + " AND funderid=" + FunderID;

        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        DataTable dt = data.Fill(sql);

        if (dt.DefaultView.Count > 0)
            TrueStatement = true;

        return TrueStatement;
    }

    protected int CheckDupFunder(string strAID, string strFunderID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //check #duplicate courses
        int intCounter = 0;
        string strQueryDupFunder = "SELECT count(*) as counter FROM funding" +
                " WHERE applicationid=" + strAID + " AND funderid=" + strFunderID;
        SqlCommand objComm2 = new SqlCommand(strQueryDupFunder, objConn);
        SqlDataReader objReader2;
        objReader2 = objComm2.ExecuteReader();
        while (objReader2.Read())
        {
            intCounter = Convert.ToInt16(objReader2["counter"]);
        }
        objReader2.Close();
        objConn.Close();
        return intCounter;
    }

    protected void AddFunder()
    {
        USTTI.Data.USTTIDataAccess data = new USTTI.Data.USTTIDataAccess();

        Decimal FundingID = data.GetNextFundingID();

        string sql = "SELECT * FROM application WHERE studentid=" + StudentID;

        DataTable dt = data.Fill(sql);

        if (dt.DefaultView.Count.Equals(0))
        {
            lblNullMessage3.Visible = true;
            lblNullMessage3.Text = "This student does not have application record";
            lblNullMessage2.Visible = false;
            return;
        }        

        USTTI.Base.Funding funder = new USTTI.Base.Funding();
        funder.FundingID = Convert.ToString(FundingID);
        funder.ApplicationID = Convert.ToString(dt.Rows[0]["applicationid"].ToString());
        funder.StudentID = Convert.ToString(StudentID);
        funder.FunderID = FunderList.SelectedValue;
        funder.FunderTypeID = FundTypeList.SelectedValue;
        funder.StartDate = start_date.GetDate();
        funder.EndDate = end_date.GetDate();
        funder.Year = "";
        funder.flAmount = Convert.ToDecimal(txtAmount.Text);
        funder.PIO = "";

        if (IsDuplicate(funder.ApplicationID, funder.FunderID))
        {
            lblDupMessage.Visible = true;
            return;
        }

        data.InsertFundingRecord(funder);

        ViewFundingListDetail();

    }
    
    
    public decimal GetTotal()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique funding id
        decimal dcTotAmount = 0;
        string strQryTotAmt = "SELECT SUM(amount) as Amount FROM funding" +
            " WHERE studentid=" + StudentID;
        SqlCommand objComm1 = new SqlCommand(strQryTotAmt, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {
            if (objReader1.IsDBNull(0) == true)
            {
                dcTotAmount = 0;
            }
            else
            {
                dcTotAmount= Convert.ToDecimal(objReader1["Amount"]);
            }
        }
        objReader1.Close();
        return dcTotAmount;
    }
    
    protected void ViewFundingListDetail()
    {
        FundingDataSource.SelectCommand = "SELECT f.fundid,a.applicdate," +
         "ft.fundtypdes,fd.fundername,fdt.fundertypdes,f.begindate,f.enddate,f.year,f.description,f.amount," +
         "f.pio_p_no FROM funding f,funders fd,fundertype fdt,fundtype ft,application a " +
         "WHERE f.applicationid=a.applicationid AND f.funderid=fd.funderid AND fd.fundertypid=fdt.fundertypid AND ft.fundtypid=f.fundtypid" +
         " AND f.studentid=" + StudentID +" ORDER BY a.applicdate DESC";
        dgFunding.DataBind();
        if (dgFunding.Rows.Count == 0)
        {
            lblNullMessage2.Visible = true;
        }
        else
        {
            lblNullMessage2.Visible = false;
            if (Session["mode"] == "add")
            {
                btnFinalize.Visible = true;
            }
            else
            {
                btnFinalize.Visible = false;
            }
        }
        dgFunding.Visible = true;
    }
    
    protected void btnAddFunder_Click(object sender, EventArgs e)
    {
        AddFunder();
       
    }
    
    protected void InitiateFunderList()
    {        
        FunderList.DataSourceID = "FunderDataSource";
        FunderList.DataTextField = "fundername";
        FunderList.DataValueField = "funderid";
        FunderList.DataBind();
        FunderList.Items.Insert(0, "-Select Funder-");
        FunderDataSource.SelectCommand = "SELECT * FROM [funders] ORDER BY [fundername]";
        FunderDataSource.DataBind();
    }
    
    protected void InitiateFundTypeList()
    {
        FundTypeList.DataSourceID = "FundTypeDataSource";
        FundTypeList.DataTextField = "fundtypdes";
        FundTypeList.DataValueField = "fundtypid";
        FundTypeList.DataBind();
        FundTypeList.Items.Insert(0, "-Select Fund Type-");
    }
        
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
           
        }
    }
    protected void DeleteRow(object sender, EventArgs e)
    {
        ViewFundingListDetail();
    }
    protected void btnAddCourse2_Click(object sender, EventArgs e)
    {
        tblSubPageEntryDetail.Visible = true;
        btnAddCourse2.Visible = false;
    }
    protected void btnSaveBackLater_Click(object sender, EventArgs e)
    {        
        Response.Redirect(WebFolder + "studentadmin/admission/student_search_record.aspx");
    }
    protected void btnFinalize_Click(object sender, EventArgs e)
    {       
        Response.Redirect(WebFolder + "studentadmin/admission/student_search_record.aspx");
    }
}
