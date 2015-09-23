/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page function as interface to show detail view of student personal
                    information
  Update History: June 12th, 2006
                  - Created additional button for delete function
                  - Create Session variable "mode" as identifier to change the menu level
                  - Hide main menu level 0 and show menu level 1 for 
                  June 27th, 2006
                  - Add function "setPhoneNumberInFormat" to set the appearance of phonenumbers using 
                    hypen to connect country code,area code,phone number
                  - Add code to read new data field created for english proficientcy
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
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
public partial class student_detail_view : System.Web.UI.Page
{
    UsttiDataObject.student objStudentTbl = new UsttiDataObject.student();
    protected Decimal StudentID;

    protected void Page_Load(object sender, EventArgs e)
    {
        StudentID = Convert.ToDecimal(Request["StudentID"].ToString());
        if ( !Page.IsPostBack )
        {
            ViewDetailData(StudentID);
        }     
    }


    protected void ViewDetailData(Decimal intSID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQueryStudent = "SELECT s.*,c.countryname as countryname,"+
            "p.countryname as passcountryname FROM student s,country c,country p WHERE (c.countryid=s.countryid"+
            " AND p.countryid=s.passportcountryid) AND s.studentid=" + intSID ;
        SqlCommand objComm = new SqlCommand(strQueryStudent, objConn);
        SqlDataReader objReader ;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            Label1.Text = Convert.ToString(objReader["honorific"]);
            Label2.Text = Convert.ToString(objReader["firstname"]);
            Session.Add("firstname",Label2.Text.Trim());
            Label3.Text = Convert.ToString(objReader["middlename"]);
            Label4.Text = Convert.ToString(objReader["lastname"]);
            Session.Add("lastname",Label4.Text.Trim());
            Label5.Text = Convert.ToString(objReader["suffix"]);
            DateTime dtDOB =Convert.ToDateTime(objReader["dob"]);
            Label6.Text = dtDOB.ToString("MM-dd-yyyy");
            Session.Add("strDOB", Label6.Text.Trim());
            Label7.Text = Convert.ToString(objReader["sex"]);
            Label8.Text = Convert.ToString(objReader["org"]);
            Label10.Text = Convert.ToString(objReader["title"]);
            Label11.Text = Convert.ToString(objReader["address1"]);
            Label13.Text = Convert.ToString(objReader["city"]);
            Label14.Text = Convert.ToString(objReader["zipcode"]);
            Label15.Text = setPhoneNumberFormat(Convert.ToString(objReader["busphone"]).Trim());
            Label16.Text =  setPhoneNumberFormat(Convert.ToString(objReader["homephone"]).Trim());
            Label32.Text =  setPhoneNumberFormat(Convert.ToString(objReader["fax"]).Trim());
            Label17.Text = Convert.ToString(objReader["cellphone"]);
            Label18.Text = Convert.ToString(objReader["busemail"]);
            Label33.Text = Convert.ToString(objReader["homeemail"]);
            Label19.Text = Convert.ToString(objReader["supername"]);
            Label20.Text = Convert.ToString(objReader["supertitle"]);
            Label21.Text = Convert.ToString(objReader["superemail"]);
            Label9.Text = Convert.ToString(objReader["png"]);
            Label22.Text = Convert.ToString(objReader["memo"]);
            Label23.Text = Convert.ToString(objReader["homeaddress1"]);
            Label25.Text = Convert.ToString(objReader["city"]);
            Label26.Text = Convert.ToString(objReader["countryname"]);
            Session.Add("countryname",Label26.Text.Trim());
            Label27.Text = Convert.ToString(objReader["homezipcode"]);
            Label28.Text = Convert.ToString(objReader["passportnum"]);
            Label29.Text = Convert.ToString(objReader["passcountryname"]);
            DateTime dtPassExDate = Convert.ToDateTime(objReader["passexpdate"]);
            Label30.Text = dtPassExDate.ToString("MM-dd-yyyy");
            Label31.Text = Convert.ToString(objReader["readingskill"]);
            Label12.Text = Convert.ToString(objReader["writingskill"]);
            Label24.Text = Convert.ToString(objReader["speakingskill"]);
            Label34.Text = Convert.ToString(objReader["comprehensionskill"]);
        }
        objReader.Close();
        objConn.Close();
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
    protected string setPhoneNumberFormat(string PhoneNumber)
    {
        string strPhoneNumberinFormat = "";
        if (IsPhoneNumberFormatRight(PhoneNumber))
        {
            if (PhoneNumber != "")
            {
                PhoneNumber.Split();
                int i = 0;
                string strCountryCode = "";
                while (i < 3)
                {
                    strCountryCode = strCountryCode + PhoneNumber[i].ToString().Trim();
                    i++;
                }
                int j = 3;
                string strAreaCode = "";
                while (j < 6)
                {

                    strAreaCode = strAreaCode + PhoneNumber[j].ToString().Trim();
                    j++;
                }
                int k = 6;
                string strPhoneNumber = "";
                while (k < PhoneNumber.Length)
                {

                    strPhoneNumber = strPhoneNumber + PhoneNumber[k].ToString().Trim();
                    k++;
                }
                strPhoneNumberinFormat = strCountryCode.Trim() + "-" + strAreaCode.Trim() + "-" + strPhoneNumber.Trim();
            }
            else
            {
                strPhoneNumberinFormat = "";
            }
        }
        else
        {
            strPhoneNumberinFormat = PhoneNumber;
        }

        return strPhoneNumberinFormat;
    }
    
    
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_edit_record.aspx?studentid=" + StudentID);
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            //define connection string
            string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
            //open connection with database
            SqlConnection objConn = new SqlConnection(strConn);
            objConn.Open();
            //create query command
            string strQueryDeleteStudent = "DELETE FROM student WHERE studentid=" + Session["studentid"];
            SqlCommand objComm = new SqlCommand(strQueryDeleteStudent, objConn);
            objComm.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            lblErrMessage.Visible = true;
            lblErrMessage.Text = "Delete operation is fail because this student still referenced by other data";
        }

    }
}
