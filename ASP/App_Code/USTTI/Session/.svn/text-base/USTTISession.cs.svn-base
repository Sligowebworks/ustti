using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections;

namespace USTTI.Session
{
    public class USTTISession
    {
        private string _key;
        private string _keyValue;

        public USTTISession()
        {

        }

        public string key
        {
            get
            {
                return _key;
            }
            set
            {
                _key = value;
            }
        }

        public string keyValue
        {
            get
            {
                return _keyValue;
            }
            set
            {
                _keyValue = value;
            }
        }
    }

    [Serializable]
    public class USTTISessionCollection : CollectionBase
    {
        public USTTISession this[int index]
        {
            get
            {
                return (USTTISession)this.List[index];
            }
            set
            {
                this.List[index] = value;
            }
        }

        public void Add(USTTISession info)
        {
            this.List.Add(info);
        }

        public USTTISession Get(String key)
        {            
            for (int i = 0; i < this.List.Count; i++)
            {
                USTTISession session = (USTTISession)this.List[i];

                if (session.key == key)
                {
                    return session;
                }
            }

            return null;
        }
    }
}
