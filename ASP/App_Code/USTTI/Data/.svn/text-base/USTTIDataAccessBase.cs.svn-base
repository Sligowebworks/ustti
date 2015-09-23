using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace USTTI.Data
{
    public class USTTIDataAccessBase
    {
        public SqlConnection SqlConn;

        public USTTIDataAccessBase()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
            SqlConn = new SqlConnection(connectionString);
        }

        public void ExecuteNonQuery(string sql)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = sql;
            cmd.Connection = SqlConn;

            try
            {
                SqlConn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("An Error has occurred: " + ex.Message);
            }
            finally
            {
                cmd = null;
                SqlConn.Close();
            }
        }

        public DataTable Fill(string sql)
        {
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            cmd.CommandText = sql;
            cmd.Connection = SqlConn;

            try
            {
                SqlConn.Open();
                adapter.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception("An Error has occurred: " + ex.Message);
            }
            finally
            {
                cmd = null;
                adapter = null;
                SqlConn.Close();
            }
            return dt;
        }
    }
}
