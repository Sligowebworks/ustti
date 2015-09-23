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

public partial class migrate_memofieldapplicationtable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        SqlCommand comm = new SqlCommand();
        comm.Parameters.Add("@studyrkey", System.Data.SqlDbType.Int, 8, "studyrkey");
        comm.Parameters.Add("@memo", System.Data.SqlDbType.Text, 100, "memo");
        OdbcCommand odbccomm2 = new OdbcCommand();
        //SqlDataReader sqlreader3;
        OdbcCommand odbccomm3 = new OdbcCommand();
        comm.Connection = sqlconn;
        odbccomm2.Connection = odbcconn;
        odbccomm3.Connection = odbcconn;
        string odbcquery = "SELECT memo,studyrkey FROM studyear" ;
        string insertQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
            while (odbcreader.Read()&&counter<10)
            {
                OdbcDataReader  odbcreader2;
                try
                {
                comm.Parameters["@memo"].Value = odbcreader["memo"].ToString().Trim();
                comm.Parameters["@studyrkey"].Value = odbcreader["studyrkey"].ToString().Trim();
                //Response.Write(comm.Parameters["@studyrkey"].Value.ToString());
                insertQuery = "UPDATE application SET memo=@memo WHERE applicationid=@studyrkey";
                comm.CommandText = insertQuery;
                comm.ExecuteNonQuery();
                counter++;
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
            
            odbcreader.Close();
            sqlconn.Close();
            odbcconn.Close();
                      
   

    }
}
