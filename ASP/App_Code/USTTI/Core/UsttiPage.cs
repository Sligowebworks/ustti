using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace USTTI.Core
{
    public class UsttiPage : System.Web.UI.Page
    {
        private string _WebFolder;

        public UsttiPage()
        {
            _WebFolder = ConfigurationManager.AppSettings["ustti.web.folder"].ToString().Trim();
        }

        public string WebFolder
        {
            get
            {
                return _WebFolder;
            }
            set
            {
                _WebFolder = value;
            }
        }
    }
}
