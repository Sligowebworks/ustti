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
    public class Sponsor
    {
        private Decimal _SponsorID;
        private string _SponsorName;
        private string _SponsorAbbr;
        private string _Contact;
        private string _Address;
        private string _City;
        private string _State;
        private string _Phone1;
        private string _Phone2;
        private string _Fax;
        private string _Email;
        private string _Comment;        

        public Sponsor()
        {

        }

        public Decimal SponsorID
        {
            get
            {
                return _SponsorID;
            }
            set
            {
                _SponsorID = value;
            }
        }

        public string SponsorName
        {
            get
            {
                return _SponsorName;
            }
            set
            {
                _SponsorName = value;
            }
        }

        public string SponsorAbbr
        {
            get
            {
                return _SponsorAbbr;
            }
            set
            {
                _SponsorAbbr = value;
            }
        }

        public string Contact
        {
            get
            {
                return _Contact;
            }
            set
            {
                _Contact = value;
            }
        }

        public string Address
        {
            get
            {
                return _Address;
            }
            set
            {
                _Address = value;
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

        public string State
        {
            get
            {
                return _State;
            }
            set
            {
                _State = value;
            }
        }

        public string Phone1
        {
            get
            {
                return _Phone1;
            }
            set
            {
                _Phone1 = value;
            }
        }

        public string Phone2
        {
            get
            {
                return _Phone2;
            }
            set
            {
                _Phone2 = value;
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

        public string Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
            }
        }

        public string Comment
        {
            get
            {
                return _Comment;
            }
            set
            {
                _Comment = value;
            }
        }

    }
}