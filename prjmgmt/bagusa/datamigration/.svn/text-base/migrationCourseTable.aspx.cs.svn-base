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

public partial class migrate_coursetable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //Class Methods
        //This is destination database
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString2"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        //This is source database
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        SqlCommand comm = new SqlCommand();
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@courseid",System.Data.SqlDbType.Int,8,"courseid"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@coursecode", System.Data.SqlDbType.Text, 16, "coursecode"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@coursetitle", System.Data.SqlDbType.Text,100, "coursetitle"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@location", System.Data.SqlDbType.Text, 16, "location"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@trainfrom", System.Data.SqlDbType.DateTime,8 , "trainfrom"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@trainto", System.Data.SqlDbType.DateTime, 8, "trainto"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@comments", System.Data.SqlDbType.Text, 100, "comments"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@slot", System.Data.SqlDbType.Int , 16, "slot"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@coordinator", System.Data.SqlDbType.Text, 16, "coordinator"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@moresponsor", System.Data.SqlDbType.Text, 16, "moresponsor"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@sid", System.Data.SqlDbType.Int, 16, "sid"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@year", System.Data.SqlDbType.Text, 16, "year"));
        OdbcCommand odbccomm2 = new OdbcCommand();
        //SqlDataReader sqlreader3;
        OdbcCommand odbccomm3 = new OdbcCommand();
        comm.Connection = sqlconn;
        odbccomm2.Connection = odbcconn;
        odbccomm3.Connection = odbcconn;
        string odbcquery = "SELECT * FROM courses";
        string insertQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
            while (odbcreader.Read())
            {
                OdbcDataReader odbcreader2;
                comm.Parameters["@courseid"].Value = odbcreader["coursekey"].ToString().Trim();
                comm.Parameters["@coursecode"].Value = odbcreader["coursenum"].ToString().Trim();
                comm.Parameters["@coursetitle"].Value = odbcreader["crsetitle1"].ToString().Trim() + odbcreader["crsetitle2"].ToString().Trim();
                comm.Parameters["@location"].Value = odbcreader["location"].ToString().Trim();
                comm.Parameters["@coordinator"].Value = odbcreader["coordinatr"].ToString().Trim();
                comm.Parameters["@trainfrom"].Value = odbcreader["trainfrom"].ToString().Trim();
                comm.Parameters["@comments"].Value = odbcreader["comments"].ToString().Trim();
                comm.Parameters["@trainto"].Value = odbcreader["trainto"].ToString().Trim();
                comm.Parameters["@slot"].Value = Convert.ToInt32(odbcreader["slots"]);
                comm.Parameters["@sid"].Value = odbcreader["prisponsid"].ToString().Trim();
                comm.Parameters["@moresponsor"].Value = odbcreader["morespons"].ToString().Trim();
                comm.Parameters["@year"].Value = odbcreader["courseyear"].ToString().Trim();
                /*if (tempstartdate.Month.Equals(12) && tempstartdate.Day.Equals(30) && tempstartdate.Year.Equals(1899))
                {
                    strStartDate = "";
                }
                else
                {
                    strStartDate = tempstartdate.Date.ToString("MM-dd-yyyy");
                }
                if (tempenddate.Month.Equals(12) && tempenddate.Day.Equals(30) && tempenddate.Year.Equals(1899))
                {
                    strEndDate = "";
                }
                else
                {
                    strEndDate = tempenddate.Date.ToString("MM-dd-yyyy");
                }*/


                insertQuery = "INSERT INTO courses VALUES(@courseid,@coursecode,@coursetitle,'',@location,@coordinator,@trainfrom,@trainto,@comments," +
                "@slot,@sid,@moresponsor,@year)";
                comm.CommandText = insertQuery;
                comm.ExecuteNonQuery();

            }
        
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
            odbcreader.Close();
            sqlconn.Close();
            odbcconn.Close();    

        }
       
        
    }

