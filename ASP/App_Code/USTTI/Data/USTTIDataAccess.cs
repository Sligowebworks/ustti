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

namespace USTTI.Data
{
    public class USTTIDataAccess : USTTIDataAccessBase
    {
       
        public USTTIDataAccess()
        {
            
        }

        public Decimal GetApplicationID(string StudentID)
        {
            Decimal NextApplicationID = 1;

            string sql = "SELECT MAX(APPLICATIONID) AS APPLICATIONID FROM APPLICATION WHERE STUDENTID = " + StudentID;

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["APPLICATIONID"] != System.DBNull.Value)
                return Convert.ToDecimal(dt.Rows[0]["APPLICATIONID"].ToString());

            return NextApplicationID;
        }

        public Decimal GetNextCourseID()
        {
            Decimal NextCourseID = 1;

            string sql = "SELECT MAX(courseid) as CID FROM courses";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["CID"] != System.DBNull.Value)
                NextCourseID = Convert.ToDecimal(dt.Rows[0]["CID"].ToString()) + 1;

            return NextCourseID;
        }



        public Decimal GetNextSponsorID()
        {
            Decimal NextSponsorID = 1;

            string sql = "SELECT MAX(sponsid) as SponsorID FROM sponsors";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["SponsorID"] != System.DBNull.Value)
                NextSponsorID = Convert.ToDecimal(dt.Rows[0]["SponsorID"].ToString()) + 1;

            return NextSponsorID;
        }

        public Decimal GetNextFunderID()
        {
            Decimal NextFunderID = 1;

            string sql = "SELECT MAX(funderid) as FID FROM funders";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["FID"] != System.DBNull.Value)
                NextFunderID = Convert.ToDecimal(dt.Rows[0]["FID"].ToString()) + 1;

            return NextFunderID;
        }

        public Decimal GetNextFundingID()
        {
            Decimal NextFunderID = 1;

            string sql = "SELECT MAX(fundid) as FID FROM funding";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["FID"] != System.DBNull.Value)
                NextFunderID = Convert.ToDecimal(dt.Rows[0]["FID"].ToString()) + 1;

            return NextFunderID;
        }

        public Decimal GetNextApplicationID()
        {
            Decimal NextApplicationID = 1;

            string sql = "SELECT MAX(applicationid) as AID FROM application";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["AID"] != System.DBNull.Value)
                NextApplicationID = Convert.ToDecimal(dt.Rows[0]["AID"].ToString()) + 1;

            return NextApplicationID;
        }

        public Decimal GetNextStudentID()
        {
            Decimal NextStudentID = 1;

            string sql = "select max(studentid) as sid from student";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["SID"] != System.DBNull.Value)
            {
                NextStudentID = Convert.ToDecimal(dt.Rows[0]["SID"].ToString()) + 1;
            }

            return NextStudentID;
        }

        public Decimal GetNextStudentCourseID()
        {
            Decimal NextStudentCourseID = 1;

            string sql = "SELECT MAX(studentcrseid) as SCID FROM studentcourse";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0 && dt.Rows[0]["SCID"] != System.DBNull.Value)
            {
                NextStudentCourseID = Convert.ToDecimal(dt.Rows[0]["SCID"].ToString()) + 1;
            }

            return NextStudentCourseID;
            
        }

        public DataTable GetStudentInfo(string first, string last, string dob)
        {            
            string sql = "select * from student ";
            sql = sql + "where ";
            sql = sql + "firstname = '" + first + "' and ";
            sql = sql + "lastname = '" + last + "' and ";
            sql = sql + "dob = '" + dob + "'";

            DataTable dt = Fill(sql);

            if (dt.DefaultView.Count > 0)
                return dt;
            
            sql = "select * from student ";
            sql = sql + "where ";
            sql = sql + "firstname = '" + first + "' and ";
            sql = sql + "lastname = '" + last + "'";

            dt = Fill(sql);

            if (dt.DefaultView.Count > 0)
                return dt;

            sql = "select * from student ";
            sql = sql + "where ";
            sql = sql + "lastname = '" + last + "'";

            dt = Fill(sql);

            if (dt.DefaultView.Count > 0)
                return dt;

            return dt;
        }

        public void InsertStudentRecord( USTTI.Base.Student objStudentTbl)
        {
            string sql = "insert into student values(" + objStudentTbl.StudentID + ",'" + objStudentTbl.Honorific + "','" + objStudentTbl.FirstName +
            "','" + objStudentTbl.MiddleName + "','" + objStudentTbl.LastName + "','" + objStudentTbl.Suffix + "','" + objStudentTbl.DOB + "','" + objStudentTbl.Sex +
            "','" + objStudentTbl.Org1 + "','','" + objStudentTbl.Title + "','" + objStudentTbl.Addr1 + "','','" + objStudentTbl.City + "','" + objStudentTbl.ZipCode + "','" + objStudentTbl.BusPhone +
            "','" + objStudentTbl.HomePhone + "','" + objStudentTbl.Fax + "','" + objStudentTbl.CellPhone + "','" + objStudentTbl.BusEmail + "','" + objStudentTbl.PerEmail +
            "','" + objStudentTbl.SpvrName + "','" + objStudentTbl.SpvrTitle + "','" + objStudentTbl.SpvrEmail + "','','" + objStudentTbl.PNG + "','" + objStudentTbl.Memo + "','" +
            objStudentTbl.HomeAddr1 + "','','" + objStudentTbl.HomeCity + "'," + objStudentTbl.CountryID + ",'" + objStudentTbl.HomeZipCode + "','" + objStudentTbl.PassNum + "','" + objStudentTbl.PassExpDate +
            "'," + objStudentTbl.PassCountry + ",'" + objStudentTbl.LastUpdateTime + "','" + objStudentTbl.ReadingSkill + "','" + objStudentTbl.WritingSkill + "','" + objStudentTbl.SpeakingSkill + "','" + objStudentTbl.ComprehensionSkill + "')";

            ExecuteNonQuery(sql);
        }

        public void UpdateStudentRecord(USTTI.Base.Student objStudentTbl)
        {
            string sql = "UPDATE student SET honorific='" + objStudentTbl.Honorific + "',firstname='" + objStudentTbl.FirstName +
            "',middlename='" + objStudentTbl.MiddleName + "',lastname='" + objStudentTbl.LastName + "',suffix='" + objStudentTbl.Suffix + "',dob='" + objStudentTbl.DOB + "',sex='" + objStudentTbl.Sex +
            "',org='" + objStudentTbl.Org1 + "',title='" + objStudentTbl.Title + "',address1='" + objStudentTbl.Addr1 + "',city='" + objStudentTbl.City + "',zipcode='" + objStudentTbl.ZipCode + "',busphone='" + objStudentTbl.BusPhone +
            "',homephone='" + objStudentTbl.HomePhone + "',fax='" + objStudentTbl.Fax + "',cellphone='" + objStudentTbl.CellPhone + "',busemail='" + objStudentTbl.BusEmail + "',homeemail='" + objStudentTbl.PerEmail +
            "',supername='" + objStudentTbl.SpvrName + "',supertitle='" + objStudentTbl.SpvrTitle + "',superemail='" + objStudentTbl.SpvrEmail + "',invalidadd='',png='" + objStudentTbl.PNG + "',memo='" + objStudentTbl.Memo + "',homeaddress1='" + objStudentTbl.HomeAddr1 + "'," +
             "homecity='" + objStudentTbl.HomeCity + "',countryid=" + objStudentTbl.CountryID + ",homezipcode='" + objStudentTbl.HomeZipCode + "',passportnum='" + objStudentTbl.PassNum + "',passexpdate='" + objStudentTbl.PassExpDate + "',passportcountryid=" +
            objStudentTbl.PassCountry + ",lastupdatetime='" + DateTime.Now + "',readingskill='" + objStudentTbl.ReadingSkill + "',speakingskill='" + objStudentTbl.SpeakingSkill + "',writingskill='" + objStudentTbl.WritingSkill + "',comprehensionskill='" + objStudentTbl.ComprehensionSkill + "' " +
            "WHERE studentid=" + objStudentTbl.StudentID;

            ExecuteNonQuery(sql);
        }

        public void InsertApplicationRecord(USTTI.Base.Application objApplicationTbl)
        {
            string sql = "INSERT INTO application VALUES(" + objApplicationTbl.ApplicationID + ",'" + objApplicationTbl.Year + "','" + objApplicationTbl.AppDate +
            "','" + objApplicationTbl.ArrUS + "','" + objApplicationTbl.DeptUS + "','" + objApplicationTbl.HotelDC + "','" + objApplicationTbl.ChkoutDate + "','" + objApplicationTbl.NeedsFund + "',''," + objApplicationTbl.SID +
            "," + objApplicationTbl.OID + ",'" + objApplicationTbl.Memo + "')";

            ExecuteNonQuery(sql);
        }

        public void InsertEnrollmentRecord(USTTI.Base.Enrollment objEnrollmentTbl)
        {
            string sql = "INSERT INTO studentcourse VALUES(" + objEnrollmentTbl.EnrollmentID + "," + objEnrollmentTbl.StudentID + "," + objEnrollmentTbl.ApplicationID +
                    ",'" + objEnrollmentTbl.CourseID + "','" + objEnrollmentTbl.Accepted + "','" + objEnrollmentTbl.Confirmed + "','" + objEnrollmentTbl.Participated + "','" + objEnrollmentTbl.FaxSent + "','" + objEnrollmentTbl.Pref + "',''," + objEnrollmentTbl.Year + ")";
            
            ExecuteNonQuery(sql);
        }

        public void InsertFundingRecord(USTTI.Base.Funding objFundingTbl)
        {
            string sql = "INSERT INTO funding VALUES(" + objFundingTbl.FundingID + "," + objFundingTbl.ApplicationID + "," + objFundingTbl.StudentID + "," + objFundingTbl.FunderTypeID + "," + objFundingTbl.FunderID + ",'" + objFundingTbl.StartDate +
                            "','" + objFundingTbl.EndDate + "','','" + objFundingTbl.Desc + "'," + objFundingTbl.flAmount + ",'')";

            ExecuteNonQuery(sql);
        }

        public void InsertFunderRecord(USTTI.Base.Funder funder)
        {
            string sql = "INSERT INTO funders VALUES(" + funder.FunderID + ","+ funder.FunderTypeID +",'" + funder.Description + "')";
            ExecuteNonQuery(sql);
        }

        public void InsertSponsorRecord(USTTI.Base.Sponsor sponsor)
        {
            string sql = "INSERT INTO sponsors VALUES(" + sponsor.SponsorID + ",'" + sponsor.SponsorName + "','" + sponsor.SponsorAbbr +
            "','" + sponsor.Contact + "','" + sponsor.Address + "','','" + sponsor.City + "','" + sponsor.State+ "','"+ sponsor.Phone1 +
            "','" + sponsor.Phone2 + "','" + sponsor.Fax + "','" + sponsor.Email + "','" + sponsor.Comment+ "')";
            ExecuteNonQuery(sql);
        }

        public void InsertCourseRecord(USTTI.Base.Course course)
        {
            string sql = "INSERT INTO courses VALUES(" + course.CourseID + ",'" + course.Code + "','" + course.Title + "','','" + course.Location +
                "','" + course.Coordinator + "','" + course.StartDate + "','" + course.EndDate + "','" + course.Comments + "','" +
                course.Slots + "','" + course.SponsorList + "','" + course.MoreSponsor + "','" + course.Year + "')";

            ExecuteNonQuery(sql);
        }

        public void UpdateCourseRecord(USTTI.Base.Course course)
        {
            string sql = "UPDATE courses SET crsetitle1='" + course.Title + "',location='" + course.Location +
            "',coordinator='" + course.Coordinator + "',trainfrom='" + course.StartDate + "',trainto='" + course.EndDate + "',comments='" + course.Comments + "',slots='" + course.Slots +
            "',prisponsid='" + course.SID + "',morespons='" + course.MoreSponsor + "',courseyear='" + course.Year +
            "' WHERE courseid='" + course.CourseID + "'";

            ExecuteNonQuery(sql);
        }

        public void UpdateSponsorRecord(USTTI.Base.Sponsor sponsor)
        {
            string sql = "UPDATE sponsors SET sponsname='" + sponsor.SponsorName + "',sponsabbr='" +sponsor.SponsorAbbr +
            "',contact='" + sponsor.Contact + "',address1='" + sponsor.Address + "',address2='',city='" + sponsor.City + "',state='" + sponsor.State +
            "',phone1='" + sponsor.Phone1 + "',phone2='" + sponsor.Phone2 + "',fax='" + sponsor.Fax + "',email='" + sponsor.Email +
            "',comments='" + sponsor.Comment + "' WHERE sponsid=" + sponsor.SponsorID;

            ExecuteNonQuery(sql);
        }

        public void UpdateFunderRecord(USTTI.Base.Funder funder)
        {
            string sql = "UPDATE funders SET fundername='" + funder.Description + "',fundertypid="+ funder.FunderTypeID+" WHERE funderid=" + funder.FunderID;
            ExecuteNonQuery(sql);
        }

        public USTTI.Base.Student GetStudentInfo(Decimal StudentID)
        {
            USTTI.Base.Student StudentInfo = new USTTI.Base.Student();

            string sql = "SELECT s.*,c.countryname as countryname," + 
            "p.countryname as passcountryname FROM student s,country c,country p WHERE (c.countryid=s.countryid" +
            " AND p.countryid=s.passportcountryid) AND s.studentid=" + StudentID;

            DataTable dt = Fill(sql);
            StudentInfo.Honorific = Convert.ToString(dt.Rows[0]["honorific"]).Trim();
            StudentInfo.FirstName = Convert.ToString(dt.Rows[0]["firstname"]).Trim();
            StudentInfo.MiddleName = Convert.ToString(dt.Rows[0]["middlename"]).Trim();
            StudentInfo.LastName = Convert.ToString(dt.Rows[0]["lastname"]).Trim();
            StudentInfo.Suffix = Convert.ToString(dt.Rows[0]["suffix"]).Trim();            
            StudentInfo.DOB = Convert.ToDateTime(dt.Rows[0]["dob"]);
            StudentInfo.Sex = Convert.ToString(dt.Rows[0]["sex"]).Trim();
            StudentInfo.Org1 = Convert.ToString(dt.Rows[0]["org"]).Trim();
            StudentInfo.Title = Convert.ToString(dt.Rows[0]["title"]).Trim();
            StudentInfo.Addr1 = Convert.ToString(dt.Rows[0]["address1"]).Trim();
            StudentInfo.City = Convert.ToString(dt.Rows[0]["city"]).Trim();
            StudentInfo.ZipCode = Convert.ToString(dt.Rows[0]["zipcode"]).Trim();
            StudentInfo.BusPhone = Convert.ToString(dt.Rows[0]["busphone"]).Trim();
            StudentInfo.HomePhone = Convert.ToString(dt.Rows[0]["homephone"]).Trim();
            StudentInfo.Fax = Convert.ToString(dt.Rows[0]["fax"]).Trim();
            StudentInfo.CellPhone = Convert.ToString(dt.Rows[0]["cellphone"]).Trim();
            StudentInfo.BusEmail = Convert.ToString(dt.Rows[0]["busemail"]).Trim();
            StudentInfo.PerEmail = Convert.ToString(dt.Rows[0]["homeemail"]).Trim();
            StudentInfo.SpvrName = Convert.ToString(dt.Rows[0]["supername"]).Trim();
            StudentInfo.SpvrTitle = Convert.ToString(dt.Rows[0]["supertitle"]).Trim();
            StudentInfo.SpvrEmail = Convert.ToString(dt.Rows[0]["superemail"]).Trim();
            StudentInfo.PNG = Convert.ToString(dt.Rows[0]["png"]).Trim();
            StudentInfo.Memo = Convert.ToString(dt.Rows[0]["memo"]).Trim();
            StudentInfo.Addr1 = Convert.ToString(dt.Rows[0]["homeaddress1"]).Trim();
            StudentInfo.HomeCity = Convert.ToString(dt.Rows[0]["city"]).Trim();
            StudentInfo.HomeZipCode = Convert.ToString(dt.Rows[0]["homezipcode"]).Trim();
            StudentInfo.CountryID = Convert.ToInt32(dt.Rows[0]["countryid"]);
            StudentInfo.CountryName = Convert.ToString(dt.Rows[0]["countryname"]).Trim();
            StudentInfo.PassNum = Convert.ToString(dt.Rows[0]["passportnum"]).Trim();
            StudentInfo.PassCountry = Convert.ToInt32(dt.Rows[0]["passportcountryid"]);
            StudentInfo.PassExpDate = Convert.ToDateTime(dt.Rows[0]["passexpdate"]);
            StudentInfo.ReadingSkill = Convert.ToString(dt.Rows[0]["readingskill"]);
            StudentInfo.WritingSkill = Convert.ToString(dt.Rows[0]["writingskill"]).Trim();
            StudentInfo.SpeakingSkill = Convert.ToString(dt.Rows[0]["speakingskill"]).Trim();
            StudentInfo.ComprehensionSkill = Convert.ToString(dt.Rows[0]["comprehensionskill"]).Trim();

            return StudentInfo;
        }        
    }
}
