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
    public class Course
    {
        private Decimal _CourseID;
        private string _Code;
        private string _Title;
        private string _Location;
        private string _Coordinator;
        private string _StartDate;
        private string _EndDate;
        private string _Comments;
        private string _Slot;
        private string _SID;
        private string _SponsorList;
        private string _MoreSponsor;
        private string _Year;
        
        public Course()
        {

        }

        public Decimal CourseID
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

        public string Code
        {
            get
            {
                return _Code;
            }
            set
            {
                _Code = value;
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

        public string Location
        {
            get
            {
                return _Location;
            }
            set
            {
                _Location = value;
            }
        }

        public string Coordinator
        {
            get
            {
                return _Coordinator;
            }
            set
            {
                _Coordinator = value;
            }
        }

        public string StartDate
        {
            get
            {
                return _StartDate;
            }
            set
            {
                _StartDate = value;
            }
        }

        public string EndDate
        {
            get
            {
                return _EndDate;
            }
            set
            {
                _EndDate = value;
            }
        }

        public string Comments
        {
            get
            {
                return _Comments;
            }
            set
            {
                _Comments = value;
            }
        }

        public string Slots
        {
            get
            {
                return _Slot;
            }
            set
            {
                _Slot = value;
            }
        }

        public string SID
        {
            get
            {
                return _SID;
            }
            set
            {
                _SID = value;
            }
        }

        public string SponsorList
        {
            get
            {
                return _SponsorList;
            }
            set
            {
                _SponsorList = value;
            }
        }

        public string MoreSponsor
        {
            get
            {
                return _MoreSponsor;
            }
            set
            {
                _MoreSponsor = value;
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


