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
/// Summary description for usttiDAL
/// </summary>
public class usttiDAL
{
	public usttiDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

       #region class level variables
        private string sql = string.Empty;
        #endregion

        #region overrides
        /// <summary>
        /// This function overrides the base function GetDS.  The only change in behavior is 
        /// setting the class-level SQL statement, which, by development spec, must be available
        /// for trace information.
        /// </summary>
        /// <param name="ds"></param>
        /// <param name="sql"></param>
        /// <param name="tableName"></param>
         protected virtual void GetDS(DataSet ds, string sql, string tableName)
        {            
            string connString = ConfigurationManager.ConnectionStrings["ustti_db_migration::connectionstring::target"].ConnectionString;
            SqlDataAdapter da = new SqlDataAdapter(sql, connString);
            da.SelectCommand.CommandTimeout = 120;  //give a full minute instead of std 30 secs.
            System.Diagnostics.Debug.WriteLine(sql);
            da.Fill(ds, tableName);
        }
        #endregion
}
