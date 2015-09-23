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

    public class Enrollment
    {

        private string _EnrollmentID;
        private string _ApplicationID;
        private string _StudentID;
        private string _CourseID;
        private string _Accepted;
        private string _Confirmed;
        private string _Participated;
        private string _FaxSent;
        private string _Pref;
        private string _Year;

        public Enrollment()
        {

        }

        public string EnrollmentID
        {
            get
            {
                return _EnrollmentID;
            }
            set
            {
                _EnrollmentID = value;
            }
        }

        public string ApplicationID
        {
            get
            {
                return _ApplicationID;
            }
            set
            {
                _ApplicationID = value;
            }
        }

        public string StudentID
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

        public string CourseID
        {
            get
            {
                return _CourseID;
            }
            set
            {
                _CourseID = value;
            }
        }

        public string Accepted
        {
            get
            {
                return _Accepted;
            }
            set
            {
                _Accepted = value;
            }
        }

        public string Confirmed
        {
            get
            {
                return _Confirmed;
            }
            set
            {
                _Confirmed = value;
            }
        }

        public string Participated
        {
            get
            {
                return _Participated;
            }
            set
            {
                _Participated = value;
            }
        }

        public string FaxSent
        {
            get
            {
                return _FaxSent;
            }
            set
            {
                _FaxSent = value;
            }
        }

        public string Pref
        {
            get
            {
                return _Pref;
            }
            set
            {
                _Pref = value;
            }
        }

        public string Year
        {
            get
            {
                return _Year;
            }
            set
            {
                _Year = value;
            }
        }
    }

}
