using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using USTTI.Session;

namespace USTTI.Util
{
    public class USTTIUtil
    {
        public USTTIUtil()
        {

        }

        public void SearchRedirectAction(HttpResponse response, string filename, string key, string value)
        {
            response.Redirect(filename + "?" + key + "=" + value + "");
        }

        public void loadRequest(HttpRequest request, USTTISessionManager SessionManager, string key)
        {
            try
            {
                string keyValue = request[key].ToString().Trim();
                SessionManager.addSessionData(key, keyValue);
            }
            catch { }
        }

        public string addMultipleStmtToWhereClause(USTTISession session)
        {
            string sql = string.Empty;

            if (session == null)
                return sql;

            string [] keysValue = session.keyValue.ToString().Split(',');

            sql = " and [Year] between " + keysValue[0] + " and " + keysValue[1] + " "; 
                        
            return sql;
        }

        public string addStmtToWhereClause(USTTISession session)
        {
            string sql = string.Empty;

            if (session == null)
                return sql;

            sql = " and [" + session.key + "] like '%" + session.keyValue + "%'";

            return sql;
        }

        public string RemoveSpecialCharacters(string StringCurrentValue)
        {
            string StringNewValue = StringCurrentValue.Replace("'", "");
            return StringNewValue;
        }

        public void AddContraint(System.Web.UI.WebControls.PlaceHolder list, string key, string value, string returnPage)
        {
            System.Web.UI.WebControls.HyperLink hyperlink = new System.Web.UI.WebControls.HyperLink();
            System.Web.UI.WebControls.Label separator = new System.Web.UI.WebControls.Label();
            hyperlink.Text = "   " + key + "  [" + value.Replace(",", " - ") + "]";
            hyperlink.NavigateUrl = "search_remove_key.aspx?key=" + key + "&return=" + returnPage;
            separator.Text = "  |  ";
            list.Controls.Add(hyperlink);
            list.Controls.Add(separator);
        }
    }
}
