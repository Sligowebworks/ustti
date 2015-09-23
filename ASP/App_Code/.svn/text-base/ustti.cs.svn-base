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

/// <summary>
/// Summary description for ustti
/// </summary>


namespace UsttiDataObject
{
    public class utilities : System.Web.UI.Page
    {
        
        public void GenerateDateList(DropDownList DDL,string strInitialValue)
        {
            int intTodayYear = DateTime.Now.Year;
            //generate Year List
            DDL.Items.Add(strInitialValue);
            for (int i = intTodayYear - 10; i <= intTodayYear; i++)
            {
                DDL.Items.Add(Convert.ToString(i));
            }
        }
        public void GenerateDateList(DropDownList DDL, string strInitialTitle, int intInitialYear)
        {
            int intTodayYear = DateTime.Now.Year;
            //generate Year List
            DDL.Items.Add(strInitialTitle);
            for (int i = intInitialYear; i <= intTodayYear; i++)
            {
                DDL.Items.Add(Convert.ToString(i));
            }
        }
        public void InitializeCountryList(DropDownList DDL,SqlDataSource DataSource)
        {
            DataSource.DataBind();
            DDL.DataSourceID = "CountryDataSource";
            DDL.DataTextField = "countryname";
            DDL.DataValueField = "countryid";
            DDL.DataBind();
            DDL.Items.Insert(0, "-Select Country-");
        }
        public void InitializeSponsorList(DropDownList DDL, SqlDataSource DataSource)
        {
            DataSource.DataBind();
            DDL.DataSourceID = "SponsorDataSource";
            DDL.DataTextField = "sponsname";
            DDL.DataValueField = "sponsid";
            DDL.DataBind();
            DDL.Items.Insert(0, "-Select Sponsor-");
        }
        public void InitializeCourseList(DropDownList DDL, SqlDataSource DataSource)
        {
            DataSource.DataBind();
            DDL.DataSourceID = "CourseDataSource";
            DDL.DataTextField = "crsetitle1";
            DDL.DataValueField = "courseid";
            DDL.DataBind();
            DDL.Items.Insert(0, "-Select Course-");
        }
    }
    public class PhoneNumber : System.Web.UI.Page
    {
        public string getNumber(TextBox txtCountryCode,TextBox txtAreaCode,TextBox txtPhoneNumber)
        {
            string strCountryCode = txtCountryCode.Text;
            string strAreaCode = txtAreaCode.Text;
            string strPhoneNumber = txtPhoneNumber.Text;
            string strCompletePhoneNumber=strCountryCode+strAreaCode+strPhoneNumber;
            if (strCompletePhoneNumber.Length==0)
            {
                return("");
            }
            else
            {
                return (strCountryCode+strAreaCode+strPhoneNumber);
            }    
        }
      
        public void setPhoneNumber(string PhoneNumber,TextBox txtCountryCode,TextBox txtAreaCode,TextBox txtPhoneNumber)
        {
            string strCountryCode, strAreaCode, strPhoneNumber;
            strCountryCode = "";
            strAreaCode = "";
            strPhoneNumber = "";
            if (PhoneNumber != "")
                {
                    PhoneNumber.Split();
                    int i = 0;
                    
                    while (i < 3)
                    {
                        strCountryCode = strCountryCode + PhoneNumber[i].ToString().Trim();
                        i++;
                    }
                    int j = 3;
                    
                    while (j < 6)
                    {

                        strAreaCode = strAreaCode + PhoneNumber[j].ToString().Trim();
                        j++;
                    }
                    int k = 6;
                   
                    while (k < PhoneNumber.Length)
                    {
                        
                       strPhoneNumber = strPhoneNumber + PhoneNumber[k].ToString().Trim();
                       k++;
                    }
                }
                txtCountryCode.Text=strCountryCode;
                txtAreaCode.Text=strAreaCode;
                txtPhoneNumber.Text=strPhoneNumber;
            }
        }

    public class student
    {
        //Class Properties
        public int intStudentID;
        public string strHonorific;
        public string strFirstName;
        public string strMiddleName;
        public string strLastName;
        public string strSuffix;
        public DateTime strDOB;
        public string strSex;
        public string strOrg1;
        public string strTitle;
        public string strAddr1;
        public string strCity;
        public string strZipCode;
        public string strBusPhone;
        public string strHomePhone;
        public string strFax;
        public string strCellPhone;
        public string strBusEmail;
        public string strPerEmail;
        public string strSpvrName;
        public string strSpvrTitle;
        public string strSpvrEmail;
        public string strMemo;
        public string strPNG;
        public string strHomeAddr1;
        public string strHomeCity;
        public int intCountry;
        public string strHomeZipCode;
        public string strPassNum;
        public DateTime strPassExpDate;
        public int intPassCountry;
        public string strLangProf;
        public DateTime lastupdatetime;
        public string strReadingSkill;
        public string strWritingSkill;
        public string strSpeakingSkill;
        public string strComprehensionSkill;            
    }
}
    
