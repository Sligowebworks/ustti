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

public partial class migrate_applicationstagingtable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string year = "";
        string studyrkey = "";
        string aplicantid = "";
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        SqlCommand comm = new SqlCommand();
        //comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@memo",System.Data.SqlDbType.Text,16,"memo"));
        OdbcCommand odbccomm2 = new OdbcCommand();
        //SqlDataReader sqlreader3;
        OdbcCommand odbccomm3 = new OdbcCommand();
        comm.Connection = sqlconn;
        odbccomm2.Connection = odbcconn;
        odbccomm3.Connection = odbcconn;
        string odbcquery = "SELECT year,studyrkey,aplicantid FROM studyear" ;
        string insertQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
            while (odbcreader.Read())
            {
                OdbcDataReader  odbcreader2;
                try
                {
                year = odbcreader["year"].ToString().Trim();
                studyrkey = odbcreader["studyrkey"].ToString().Trim();
                aplicantid = odbcreader["aplicantid"].ToString().Trim();
                insertQuery = "INSERT INTO application_staging(studyrkey,year,aplicantid)VALUES("+studyrkey+",'"+ year + "',"+ aplicantid+")";
                comm.CommandText = insertQuery;
                comm.ExecuteNonQuery();
                
                }
                catch (SqlException err)
                {
                    /*odbccomm2.CommandText = "SELECT MAX(studyrkey) as applicationid FROM studyear";
                    odbcreader2 = odbccomm2.ExecuteReader();
                    int maxKey =0;
                    while (odbcreader2.Read())
                    {
                        maxKey = Convert.ToInt32(odbcreader2["applicationid"])+1;
                    }
                    odbccomm3.CommandText = "UPDATE studyear SET studyrkey=" + maxKey + " WHERE studyrkey=" + studyrkey;
                    odbccomm3.ExecuteNonQuery();
                    odbcreader2.Close();*/
                    Response.Write(err.Message.ToString());
                }
               
            }
            Response.Write(Convert.ToChar(counter++));
            odbcreader.Close();
            sqlconn.Close();
            odbcconn.Close();
                      
   

    }
}
