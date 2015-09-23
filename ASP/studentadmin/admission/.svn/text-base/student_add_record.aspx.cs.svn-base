/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page functions as an interface to capture user input for student information 
                    then store it in database
  Update History: June 13th,2006
                  - Assign session variables that include studentid,firstname,lastname,countryname fields
                  - Additional code for "Save & Continue" & "Save & Back Later" Buttons
                  June 27th,2006
                  - Add aditional code to perform data insertion for fields related with language proficiency
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
using System.Text.RegularExpressions;
using USTTI.Data;
using USTTI.Util;
using USTTI.Core;

public partial class student_add_record : UsttiPage
{

    protected Decimal _StudentID;
    protected USTTIUtil UtilManager;

    protected void Page_Load(object sender, EventArgs e)
    {
        UtilManager = new USTTIUtil();
        if (Page.IsPostBack == false)
        {
            initPage();
        }
    }

    public Decimal StudentID
    {
        get
        {
            return _StudentID;
        }
        set
        {
            _StudentID = value;
        }
    }

    private void initPage()
    {
        try
        {
            txtFirstName.Text = Request["First"].ToString();
        }
        catch { }

        try
        {
            txtLastName.Text = Request["Last"].ToString();
        }
        catch { }        

        InitializeCountryList(CountryDropDownList);
        InitializeCountryList(PassCountryDataList);
        dob_selector.GenerateDateList();
        pass_exp_date_selector.GenerateDateList(1980, 2020);

        try
        {
            dob_selector.fillControl(Request["DOB"].ToString());
        }
        catch { }        
    }

    protected void InitializeCountryList(DropDownList DDL)
    {
        CountryDataSource.DataBind();
        DDL.DataSourceID = "CountryDataSource";
        DDL.DataTextField = "countryname";
        DDL.DataValueField = "countryid";
        DDL.DataBind();
        DDL.Items.Insert(0, "-Select Country-");
    }

    private void SaveRecord() 
    {
        USTTIDataAccess data = new USTTIDataAccess();
        USTTI.Base.Student objStudentTbl = new USTTI.Base.Student();

        //UsttiDataObject.student objStudentTbl = new UsttiDataObject.student();
        UsttiDataObject.PhoneNumber objBusPhoneNumber = new UsttiDataObject.PhoneNumber();
        UsttiDataObject.PhoneNumber objHomePhoneNumber = new UsttiDataObject.PhoneNumber();
        UsttiDataObject.PhoneNumber objFaxPhoneNumber = new UsttiDataObject.PhoneNumber();
        StudentID = data.GetNextStudentID();

        objStudentTbl.StudentID = StudentID;
        objStudentTbl.Honorific = DropDownListHonorific.SelectedItem.Text;
        objStudentTbl.FirstName = UtilManager.RemoveSpecialCharacters(txtFirstName.Text.ToString());
        objStudentTbl.MiddleName = UtilManager.RemoveSpecialCharacters(txtMiddleName.Text.ToString());
        objStudentTbl.LastName = UtilManager.RemoveSpecialCharacters(txtLastName.Text.ToString());
        objStudentTbl.Suffix = UtilManager.RemoveSpecialCharacters(txtSuffix.Text.ToString());
        objStudentTbl.DOB = Convert.ToDateTime(dob_selector.GetDate().ToString());
        objStudentTbl.Sex = DropDownListSex.SelectedItem.Text;
        objStudentTbl.Org1 = UtilManager.RemoveSpecialCharacters(txtOrg1.Text.ToString());
        objStudentTbl.Title = txtTitle.Text;
        objStudentTbl.Addr1 = UtilManager.RemoveSpecialCharacters(txtAddress1.Text.ToString());
        objStudentTbl.City = UtilManager.RemoveSpecialCharacters(txtCity.Text.ToString());
        objStudentTbl.ZipCode = txtZipCode.Text;
        objStudentTbl.BusPhone = objBusPhoneNumber.getNumber(txtBusCountryCode, txtBusAreaCode, txtBusPhoneNumber);
        objStudentTbl.HomePhone = objHomePhoneNumber.getNumber(txtHomeCountryCode, txtHomeAreaCode, txtHomePhoneNumber);
        objStudentTbl.Fax = objFaxPhoneNumber.getNumber(txtFaxCountryCode, txtFaxAreaCode, txtFaxPhoneNumber);
        objStudentTbl.CellPhone = txtCellPhone.Text;
        objStudentTbl.BusEmail = UtilManager.RemoveSpecialCharacters(txtBusEmail.Text.ToString());
        objStudentTbl.PerEmail = UtilManager.RemoveSpecialCharacters(txtPerEmail.Text.ToString());
        objStudentTbl.SpvrName = UtilManager.RemoveSpecialCharacters(txtSpvrName.Text.ToString());
        objStudentTbl.SpvrTitle = UtilManager.RemoveSpecialCharacters(txtSpvrTitle.Text.ToString());
        objStudentTbl.SpvrEmail = UtilManager.RemoveSpecialCharacters(txtSupvrEmail.Text.ToString());
        objStudentTbl.Memo = UtilManager.RemoveSpecialCharacters(txtMemo.Text.ToString());
        objStudentTbl.PNG = PNGRadioButton.SelectedValue;
        objStudentTbl.HomeAddr1 = UtilManager.RemoveSpecialCharacters(txtHomeAddress1.Text.ToString());
        objStudentTbl.HomeCity = UtilManager.RemoveSpecialCharacters(txtHomeCity.Text.ToString());
        objStudentTbl.HomeZipCode = txtHomeZipCode.Text;
        objStudentTbl.CountryID = Convert.ToInt32(CountryDropDownList.SelectedValue);
        objStudentTbl.PassNum = txtPassportNum.Text;
        objStudentTbl.PassExpDate = Convert.ToDateTime(pass_exp_date_selector.GetDate());
        objStudentTbl.PassCountry = Convert.ToInt32(PassCountryDataList.SelectedValue);
        objStudentTbl.LastUpdateTime = DateTime.Now;
        objStudentTbl.ReadingSkill = ReadingSkill.SelectedValue;
        objStudentTbl.WritingSkill = WritingSkill.SelectedValue;
        objStudentTbl.SpeakingSkill = SpeakingSkill.SelectedValue;
        objStudentTbl.ComprehensionSkill = Comprehension.SelectedValue;

        data.InsertStudentRecord(objStudentTbl);        
    }    

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SaveRecord();
            Response.Redirect(WebFolder + "studentadmin/application/application_add_record.aspx?StudentID=" + StudentID);
        }
    }

    protected void btnSaveBackLater_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            SaveRecord();
            Response.Redirect(WebFolder + "studentadmin/admission/student_search_record.aspx");
        }
    }
}
