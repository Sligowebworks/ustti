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

public partial class migrate_studentcoursetable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Class Methods
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString2"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        SqlCommand comm = new SqlCommand();
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@accepted",System.Data.SqlDbType.Text,16,"accepted"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@confirmed", System.Data.SqlDbType.Text, 16, "confirmed"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@participat", System.Data.SqlDbType.Text,16, "participat"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@faxsent", System.Data.SqlDbType.Text, 16, "faxsent"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@preference", System.Data.SqlDbType.Int,8 , "preference"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@hotel", System.Data.SqlDbType.Text, 16, "hotel"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@studcrskey", System.Data.SqlDbType.Int , 8, "studcrskey"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@aplicantid", System.Data.SqlDbType.Int, 8, "aplicant"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@courseid", System.Data.SqlDbType.Int, 16, "courseid"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@studyrkey", System.Data.SqlDbType.Int, 8, "studyrkey"));
        comm.Parameters.Add(new System.Data.SqlClient.SqlParameter("@year", System.Data.SqlDbType.Text, 16, "year"));
        OdbcCommand odbccomm2 = new OdbcCommand();
        //SqlDataReader sqlreader3;
        OdbcCommand odbccomm3 = new OdbcCommand();
        comm.Connection = sqlconn;
        odbccomm2.Connection = odbcconn;
        odbccomm3.Connection = odbcconn;
        string odbcquery = "SELECT c.*,s.studyrkey FROM studcrse c,studyear s WHERE s.year=c.year AND s.aplicantid=c.aplicantid";
        string insertQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
            while (odbcreader.Read())
            {
                OdbcDataReader odbcreader2;
                //strCID = Convert.ToString(odbcreader["coursenum"]);
                //strCrsetitle1 = Convert.ToString(odbcreader["crsetitle1"]).Trim();
                //strLocation = Convert.ToString(odbcreader["location"]).Trim();
                //strCoordinator = Convert.ToString(odbcreader["coordinatr"]).Trim(); ;
                //tempstartdate = Convert.ToDateTime(odbcreader["trainfrom"]);
                //tempenddate = Convert.ToDateTime(odbcreader["trainto"]);
                //strSlot = Convert.ToString(odbcreader["slots"]);
                //strSID = Convert.ToString(odbcreader["prisponsid"]).Trim();
                //strMoreSponsor = Convert.ToString(odbcreader["morespons"]).Trim(); ;
                //strYear = Convert.ToString(odbcreader["courseyear"]).Trim();

                comm.Parameters["@accepted"].Value = odbcreader["accepted"].ToString().Trim();
                comm.Parameters["@confirmed"].Value = odbcreader["confirmed"].ToString().Trim();
                comm.Parameters["@participat"].Value = odbcreader["participat"].ToString().Trim();
                comm.Parameters["@faxsent"].Value = odbcreader["faxsent"].ToString().Trim();
                comm.Parameters["@preference"].Value = Convert.ToInt32(odbcreader["preference"]);
                comm.Parameters["@hotel"].Value = odbcreader["hotel"].ToString().Trim();
                comm.Parameters["@studcrskey"].Value = Convert.ToInt32(odbcreader["studcrskey"]);
                comm.Parameters["@aplicantid"].Value = Convert.ToInt32(odbcreader["aplicantid"]);
                comm.Parameters["@courseid"].Value = Convert.ToInt32(odbcreader["courseid"]);
                comm.Parameters["@studyrkey"].Value = Convert.ToInt32(odbcreader["studyrkey"]);
                comm.Parameters["@year"].Value = Convert.ToString(odbcreader["year"]);
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


                insertQuery = "INSERT INTO studentcourse(studentcrseid,studentid,applicationid,courseid,accepted,confirmed,participat,faxsent,preference,hotel,year)"+
                    "VALUES(@studcrskey,@aplicantid,@studyrkey,@courseid,@accepted,@confirmed,@participat,@faxsent,@preference,@hotel,@year)";
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

