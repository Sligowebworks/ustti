using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace USTTI.Base
{
    public class Student
    {
        #region Member Declaration
        private Decimal _StudentID;
        private string _Honorific;
        private string _FirstName;
        private string _MiddleName;
        private string _LastName;
        private string _Suffix;
        private DateTime _DOB;
        private string _Sex;
        private string _Org1;
        private string _Title;
        private string _Addr1;
        private string _City;
        private string _ZipCode;
        private string _BusPhone;
        private string _HomePhone;
        private string _Fax;
        private string _CellPhone;
        private string _BusEmail;
        private string _PerEmail;
        private string _SpvrName;
        private string _SpvrTitle;
        private string _SpvrEmail;
        private string _Memo;
        private string _PNG;
        private string _HomeAddr1;
        private string _HomeCity;
        private int _CountryID;
        private string _CountryName;
        private string _HomeZipCode;
        private string _PassNum;
        private DateTime _PassExpDate;
        private int _PassCountry;
        private string _LangProf;
        private DateTime _lastupdatetime;
        private string _ReadingSkill;
        private string _WritingSkill;
        private string _SpeakingSkill;
        private string _ComprehensionSkill;

        #endregion

        public Student()
        {

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

        public string Honorific
        {
            get
            {
                return _Honorific;
            }
            set
            {
                _Honorific = value;
            }
        }

        public string FirstName
        {
            get
            {
                return _FirstName;
            }
            set
            {
                _FirstName = value;
            }
        }

        public string MiddleName
        {
            get
            {
                return _MiddleName;
            }
            set
            {
                _MiddleName = value;
            }
        }

        public string LastName
        {
            get
            {
                return _LastName;
            }
            set
            {
                _LastName = value;
            }
        }

        public string Suffix
        {
            get
            {
                return _Suffix;
            }
            set
            {
                _Suffix = value;
            }
        }

        public DateTime DOB
        {
            get
            {
                return _DOB;
            }
            set
            {
                _DOB = value;
            }
        }

        public string Sex
        {
            get
            {
                return _Sex;
            }
            set
            {
                _Sex = value;
            }
        }

        public string Org1
        {
            get
            {
                return _Org1;
            }
            set
            {
                _Org1 = value;
            }
        }
        
        public string Title
        {
            get
            {
                return _Title;
            }
            set
            {
                _Title = value;
            }
        }

        public string Addr1
        {
            get
            {
                return _Addr1;
            }
            set
            {
                _Addr1 = value;
            }
        }
        
        public string City
        {
            get
            {
                return _City;
            }
            set
            {
                _City = value;
            }
        }

        public string ZipCode
        {
            get
            {
                return _ZipCode;
            }
            set
            {
                _ZipCode = value;
            }
        }

        public string BusPhone
        {
            get
            {
                return _BusPhone;
            }
            set
            {
                _BusPhone = value;
            }
        }

        public string HomePhone
        {
            get
            {
                return _HomePhone;
            }
            set
            {
                _HomePhone = value;
            }
        }

        public string Fax
        {
            get
            {
                return _Fax;
            }
            set
            {
                _Fax = value;
            }
        }

        public string CellPhone
        {
            get
            {
                return _CellPhone;
            }
            set
            {
                _CellPhone = value;
            }
        }

        public string BusEmail
        {
            get
            {
                return _BusEmail;
            }
            set
            {
                _BusEmail = value;
            }
        }

        public string PerEmail
        {
            get
            {
                return _PerEmail;
            }
            set
            {
                _PerEmail = value;
            }
        }

        public string SpvrName
        {
            get
            {
                return _SpvrName;
            }
            set
            {
                _SpvrName = value;
            }
        }

        public string SpvrTitle
        {
            get
            {
                return _SpvrTitle;
            }
            set
            {
                _SpvrTitle = value;
            }
        }

        public string SpvrEmail
        {
            get
            {
                return _SpvrEmail;
            }
            set
            {
                _SpvrEmail = value;
            }
        }

        public string Memo
        {
            get
            {
                return _Memo;
            }
            set
            {
                _Memo = value;
            }
        }

        public string PNG
        {
            get
            {
                return _PNG;
            }
            set
            {
                _PNG = value;
            }
        }

        public string HomeAddr1
        {
            get
            {
                return _HomeAddr1;
            }
            set
            {
                _HomeAddr1 = value;
            }
        }

        public string HomeCity
        {
            get
            {
                return _HomeCity;
            }
            set
            {
                _HomeCity = value;
            }
        }

        public int CountryID
        {
            get
            {
                return _CountryID;
            }
            set
            {
                _CountryID = value;
            }
        }

        public string CountryName
        {
            get
            {
                return _CountryName;
            }
            set
            {
                _CountryName = value;
            }
        }

        public string HomeZipCode
        {
            get
            {
                return _HomeZipCode;
            }
            set
            {
                _HomeZipCode = value;
            }
        }
        
        public string PassNum
        {
            get
            {
                return _PassNum;
            }
            set
            {
                _PassNum = value;
            }
        }

        public DateTime PassExpDate
        {
            get
            {
                return _PassExpDate;
            }
            set
            {
                _PassExpDate = value;
            }
        }

        public int PassCountry
        {
            get
            {
                return _PassCountry;
            }
            set
            {
                _PassCountry = value;
            }
        }

        public string LangProf
        {
            get
            {
                return _LangProf;
            }
            set
            {
                _LangProf = value;
            }
        }

        public DateTime LastUpdateTime
        {
            get
            {
                return _lastupdatetime;
            }
            set
            {
                _lastupdatetime = value;
            }
        }

        public string ReadingSkill
        {
            get
            {
                return _ReadingSkill;
            }
            set
            {
                _ReadingSkill = value;
            }
        }

        public string WritingSkill
        {
            get
            {
                return _WritingSkill;
            }
            set
            {
                _WritingSkill = value;
            }
        }

        public string SpeakingSkill
        {
            get
            {
                return _SpeakingSkill;
            }
            set
            {
                _SpeakingSkill = value;
            }
        }

        public string ComprehensionSkill
        {
            get
            {
                return _ComprehensionSkill;
            }
            set
            {
                _ComprehensionSkill = value;
            }
        }       
    }
}
