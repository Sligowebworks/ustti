using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace USTTI.Session
{
    public class USTTISessionManager
    {
        USTTISessionCollection searchList;

        public USTTISessionManager(System.Web.SessionState.HttpSessionState Session)
        {
            searchList = loadList(Session);
        }

        public void addSessionData(string key, string value)
        {
            if (IsKeyAlreadyExists(key))
            {
                removeSessionData(key);
            }

            USTTISession session = new USTTISession();
            session.key = key;
            session.keyValue = value;
            searchList.Add(session);              
        }

        protected bool IsKeyAlreadyExists(string key)
        {
            bool KeyAlreadyExists = false;
            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];
                if (app.key == key)
                {
                    KeyAlreadyExists = true;
                }
            }
            return KeyAlreadyExists;
        }

        public string getSessionData(string key)
        {
            string SessionData = string.Empty;
            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];
                if (app.key == key)
                {
                    SessionData = app.keyValue;
                }
            }
            return SessionData;
        }

        public void removeSessionData(string key)
        {
            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];
                if (app.key == key)
                {
                    searchList.RemoveAt(i);
                }
            }
        }

        public void removeAllSessionData(System.Web.SessionState.HttpSessionState Session)
        {
            for (int i = 0; i < searchList.Count; i++)
            {
                searchList.RemoveAt(i);
            }
            Session.Remove("USTTILIST");
        }

        public void removeSessionListItem(String name)
        {
            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];

                if (app.key == name)
                {
                    searchList.RemoveAt(i);
                }
            }
        }

        public USTTISessionCollection getSessionList()
        {
            return searchList;
        }

        public void saveList(System.Web.SessionState.HttpSessionState Session)
        {
            Session["USTTILIST"] = searchList;
        }

        public USTTISessionCollection loadList(System.Web.SessionState.HttpSessionState Session)
        {
            USTTISessionCollection list = (USTTISessionCollection)Session["USTTILIST"];

            if (list == null)
                list = new USTTISessionCollection();

            return list;
        }

        public string buildAllWhereClause()
        {
            string whereClause = " where 1 = 1 ";

            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];

                if (app.key != "Year")
                {
                    whereClause = whereClause + " and [" + app.key + "] = " + app.keyValue;
                }
            }

            return whereClause;
        }

        public string buildCourseWhereClause()
        {
            string whereClause = " where 1 = 1 ";

            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];

                if ( ( app.key != "First" ) && ( app.key != "Last" ) && ( app.key != "Country" ) )
                {                   
                    whereClause = whereClause + " and [" + app.key + "] = " + app.keyValue;
                }
            }

            return whereClause;
        }

        public string buildStatusWhereClause()
        {
            string whereClause = " where 1 = 1 ";

            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];

                if ((app.key != "D.O.B") && (app.key != "Start Date") && (app.key != "Orientation Start"))
                {
                    whereClause = whereClause + " and [" + app.key + "] = " + app.keyValue;
                }
            }

            return whereClause;
        }

        public string buildStudentInfoWhereClause()
        {
            string whereClause = " where 1 = 1 ";

            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];

                if ((app.key != "Start Date") && (app.key != "Orientation Start") && (app.key != "Year") )
                {
                    whereClause = whereClause + " and [" + app.key + "] = " + app.keyValue;
                }
            }

            return whereClause;
        }

        public string buildStudentInfoExtendedWhereClause()
        {
            string whereClause = " where 1 = 1 ";

            for (int i = 0; i < searchList.Count; i++)
            {
                USTTISession app = (USTTISession)searchList[i];

                if ((app.key != "Start Date") && (app.key != "Orientation Start") && (app.key != "Year"))
                {
                    whereClause = whereClause + " and [" + app.key + "] = " + app.keyValue;
                }
            }

            return whereClause;
        }
    }
}
