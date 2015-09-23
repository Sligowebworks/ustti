/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page function as interface to capture user input in database
                    and let user perform edit
  Update History: June 12th,2006
                  -Using Session variable instead of query string to pull student data
                  -Hide main menu and show menu level 1 
                  June 27th, 2006
                  -Add aditional code to accomodate new fields for english proficiency for data insert
                   and data view
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
using USTTI.Base;

public partial class student_edit_record : System.Web.UI.Page
{
    UsttiDataObject.student objStudentTbl = new UsttiDataObject.student();
    UsttiDataObject.PhoneNumber objBusPhoneNumber = new UsttiDataObject.PhoneNumber();
    UsttiDataObject.PhoneNumber objHomePhoneNumber = new UsttiDataObject.PhoneNumber();
    UsttiDataObject.PhoneNumber objFaxPhoneNumber = new UsttiDataObject.PhoneNumber();
    private Decimal StudentID;

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
        dob_selector.GenerateDateList();
        pass_exp_date_selector.GenerateDateList(1980, 2010);
        ViewStudentData(StudentID);       
    }

    protected void SaveUserInputinEdit(Decimal strStudentID)
    {
        USTTIDataAccess data = new USTTIDataAccess();
        USTTI.Base.Student objStudentTbl = new USTTI.Base.Student();

        objStudentTbl.StudentID = strStudentID;
        objStudentTbl.Honorific = DropDownListHonorific.SelectedItem.Text;
        objStudentTbl.FirstName = txtFirstName.Text;
        objStudentTbl.MiddleName = txtMiddleName.Text;
        objStudentTbl.LastName = txtLastName.Text;
        objStudentTbl.Suffix = txtSuffix.Text;
        objStudentTbl.DOB = Convert.ToDateTime(dob_selector.GetDate());
        objStudentTbl.Sex = DropDownListSex.SelectedItem.Text;
        objStudentTbl.Org1 = txtOrg1.Text;
        objStudentTbl.Title = txtTitle.Text;
        objStudentTbl.Addr1 = txtAddress1.Text;
        objStudentTbl.City = txtCity.Text;
        objStudentTbl.ZipCode = txtZipCode.Text;
        
        if (ViewState["oldbusphnbrformat"].Equals(true))
        {
            objStudentTbl.BusPhone = txtBusPhoneNumberOld.Text.Trim();
        }
        else
        {
            objStudentTbl.BusPhone = Regex.Replace(objBusPhoneNumber.getNumber(txtBusCountryCode, txtBusAreaCode, txtBusPhoneNumber), "\\s+", "");
        }
        if (ViewState["oldhomephnbrformat"].Equals(true))
        {
            objStudentTbl.HomePhone = txthomephonenumberoldformat.Text.Trim();
        }
        else
        {
            objStudentTbl.HomePhone = Regex.Replace(objHomePhoneNumber.getNumber(txtHomeCountryCode, txtHomeAreaCode, txtHomePhoneNumber), "\\s+", "");
        }
        if (ViewState["oldfaxphnbrformat"].Equals(true))
        {
            objStudentTbl.Fax = txtfaxnumberoldformat.Text.Trim();
        }
        else
        {
            objStudentTbl.Fax = Regex.Replace(objFaxPhoneNumber.getNumber(txtFaxCountryCode, txtFaxAreaCode, txtFaxPhoneNumber), "\\s+", "");
        }
        objStudentTbl.CellPhone = txtCellPhone.Text;
        objStudentTbl.BusEmail = txtBusEmail.Text;
        objStudentTbl.PerEmail = txtPerEmail.Text;
        objStudentTbl.SpvrName = txtSpvrName.Text;
        objStudentTbl.SpvrTitle = txtSpvrTitle.Text;
        objStudentTbl.SpvrEmail = txtSupvrEmail.Text;
        objStudentTbl.PNG = PNGRadioButton.SelectedValue;
        objStudentTbl.Memo = txtMemo.Text;
        objStudentTbl.HomeAddr1 = txtHomeAddress1.Text;
        objStudentTbl.HomeCity = txtHomeCity.Text;
        objStudentTbl.HomeZipCode = txtHomeZipCode.Text;
        objStudentTbl.CountryID = Convert.ToInt32(CountryDropDownList.SelectedValue);
        objStudentTbl.PassNum = txtPassportNum.Text;
        objStudentTbl.PassExpDate = Convert.ToDateTime(pass_exp_date_selector.GetDate());
        objStudentTbl.PassCountry = Convert.ToInt32(PassCountryDataList.SelectedValue);
        objStudentTbl.ReadingSkill = ReadingSkill.SelectedValue.Trim();
        objStudentTbl.WritingSkill = WritingSkill.SelectedValue.Trim();
        objStudentTbl.SpeakingSkill = SpeakingSkill.SelectedValue.Trim();
        objStudentTbl.ComprehensionSkill = Comprehension.SelectedValue.Trim();

        data.UpdateStudentRecord(objStudentTbl);
    }
    protected bool IsPhoneNumberFormatRight(string strPhoneNumber)
    {
        bool status;
        if (Regex.IsMatch(strPhoneNumber, "^[0-9]{13}$"))
        {
            status = true;
        }
        else
        {
            status = false;
        }
        return status;
    }

    protected void ViewStudentData(Decimal intSID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQueryStudent = "SELECT s.*,c.countryname as countryname," +
            "p.countryname as passcountryname FROM student s,country c,country p WHERE (c.countryid=s.countryid" +
            " AND p.countryid=s.passportcountryid) AND s.studentid=" + intSID;
        SqlCommand objComm = new SqlCommand(strQueryStudent, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            DropDownListHonorific.Text = Convert.ToString(objReader["honorific"]).Trim();
            txtFirstName.Text = Convert.ToString(objReader["firstname"]).Trim();
            txtMiddleName.Text = Convert.ToString(objReader["middlename"]).Trim();
            txtLastName.Text = Convert.ToString(objReader["lastname"]).Trim();
            txtSuffix.Text = Convert.ToString(objReader["suffix"]).Trim();
            dob_selector.fillControl(Convert.ToString(objReader["dob"]));
            DropDownListSex.Text = Convert.ToString(objReader["sex"]).Trim();
            txtOrg1.Text = Convert.ToString(objReader["org"]).Trim();
            txtTitle.Text = Convert.ToString(objReader["title"]).Trim();
            txtAddress1.Text = Convert.ToString(objReader["address1"]).Trim();
            txtCity.Text = Convert.ToString(objReader["city"]).Trim();
            txtZipCode.Text = Convert.ToString(objReader["zipcode"]).Trim();
            string strBusPhone = Convert.ToString(objReader["busphone"]).Trim();
            if(IsPhoneNumberFormatRight(strBusPhone))
            {
                ViewState["oldbusphnbrformat"] = false;
                busphonenumbernewformat.Visible=true;
                busphonenumberoldformat.Visible=false;
                objBusPhoneNumber.setPhoneNumber(strBusPhone.Trim(), txtBusCountryCode, txtBusAreaCode, txtBusPhoneNumber);
                
            }
            else
            {
                ViewState["oldbusphnbrformat"] = true;
                busphonenumbernewformat.Visible=false;
                busphonenumberoldformat.Visible=true;
                txtBusPhoneNumberOld.Text=strBusPhone.Trim();
            }
            string strHomePhone = Convert.ToString(objReader["homephone"]).Trim();
            if (IsPhoneNumberFormatRight(strHomePhone))
            {
                ViewState["oldhomephnbrformat"] = false;
                homephonenumbernewformat.Visible = true;
                homephonenumberoldformat.Visible = false;
                objHomePhoneNumber.setPhoneNumber(strHomePhone, txtHomeCountryCode, txtHomeAreaCode, txtHomePhoneNumber);
            }
            else
            {
                ViewState["oldhomephnbrformat"] = true;
                homephonenumbernewformat.Visible = false;
                homephonenumberoldformat.Visible = true;
                txthomephonenumberoldformat.Text = strHomePhone.Trim();
            }
            string strFax = Convert.ToString(objReader["fax"]).Trim();
            if (IsPhoneNumberFormatRight(strFax))
            {
                ViewState["oldfaxphnbrformat"] = false;
                faxnumbernewformat.Visible = true;
                faxnumberoldformat.Visible = false;
                objFaxPhoneNumber.setPhoneNumber(strFax, txtFaxCountryCode, txtFaxAreaCode, txtFaxPhoneNumber);
            }
            else
            {
                ViewState["oldfaxphnbrformat"] = true;
                faxnumbernewformat.Visible = false;
                faxnumberoldformat.Visible = true;
                txtfaxnumberoldformat.Text = strFax.Trim();
            }
            txtCellPhone.Text = Convert.ToString(objReader["cellphone"]).Trim();            
            txtBusEmail.Text =  Convert.ToString(objReader["busemail"]).Trim();
            txtPerEmail.Text = Convert.ToString(objReader["homeemail"]).Trim();
            txtSpvrName.Text = Convert.ToString(objReader["supername"]).Trim();
            txtSpvrTitle.Text = Convert.ToString(objReader["supertitle"]).Trim();
            txtSupvrEmail.Text = Convert.ToString(objReader["superemail"]).Trim();
            PNGRadioButton.SelectedValue = Convert.ToString(objReader["png"]).Trim();
            txtMemo.Text = Convert.ToString(objReader["memo"]).Trim();
            txtHomeAddress1.Text = Convert.ToString(objReader["homeaddress1"]).Trim();
            txtHomeCity.Text = Convert.ToString(objReader["city"]).Trim();
            txtHomeZipCode.Text = Convert.ToString(objReader["homezipcode"]).Trim();
            CountryDropDownList.SelectedValue = Convert.ToString(objReader["countryid"]);
            txtPassportNum.Text = Convert.ToString(objReader["passportnum"]).Trim();
            PassCountryDataList.SelectedValue= Convert.ToString(objReader["passportcountryid"]);
            pass_exp_date_selector.fillControl( Convert.ToString(objReader["passexpdate"]));
            ReadingSkill.SelectedValue = Convert.ToString(objReader["readingskill"]).Trim();
            WritingSkill.SelectedValue = Convert.ToString(objReader["writingskill"]).Trim();
            SpeakingSkill.SelectedValue = Convert.ToString(objReader["speakingskill"]).Trim();
            Comprehension.SelectedValue = Convert.ToString(objReader["comprehensionskill"]).Trim();
            Session.Add("firstname", txtFirstName.Text.Trim());
            Session.Add("lastname", txtFirstName.Text.Trim());
            Session.Add("dob", dob_selector.GetDate());
            Session.Add("countryname",   Convert.ToString(objReader["countryid"]).ToString().Trim());
        }
        objReader.Close();
        objConn.Close();
    }
    
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInputinEdit(StudentID);
            Response.Redirect("student_detail_view.aspx?StudentID="+StudentID);
        }
    }
    protected void btnConvertPhoneNumber_Click(object sender, EventArgs e)
    {
        if (Page.IsValid==true)
        {
            busphonenumbernewformat.Visible = true;
            busphonenumberoldformat.Visible = false;
        }
    }
}
