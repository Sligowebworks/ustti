using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.Odbc;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class migrate_updatememofieldapplicationtable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Class Properties
        //int intStudentID = 0;
        //string strMemo = "";
        //Class Methods
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString2"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        SqlCommand comm = new SqlCommand();
        comm.Parameters.Add("@applicationid", SqlDbType.Int, 8, "applicationid");
        comm.Parameters.Add("@memo", SqlDbType.Text, 100, "memo");
        comm.Connection = sqlconn;
        SqlDataReader sqlreader;
        string odbcquery = "SELECT studyrkey,memo FROM studyear";
        string updateQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
        while (odbcreader.Read())
        {
            {
                comm.Parameters["@applicationid"].Value = Convert.ToInt32(odbcreader["studyrkey"]);
                comm.Parameters["@memo"].Value = Convert.ToString(odbcreader["memo"]);
                updateQuery = "UPDATE application SET memo=@memo WHERE applicationid=@applicationid";
                comm.CommandText = updateQuery;
                comm.ExecuteNonQuery();
                //counter++;
            }
        }
        Response.Write("moving to sql server is done<BR>");
        Response.Write("Total Record Updated :"+Convert.ToString(counter));
        odbcreader.Close();
        sqlconn.Close();
        odbcconn.Close();
    }
}
