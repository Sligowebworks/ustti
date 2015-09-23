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

public partial class migrate_fundingtable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int intFundID = 0;
        string strAID="" ;
        string strSID="" ;
        string strFunderID="";
        string strFundTypID="";
        DateTime tempStartDate = DateTime.Now;
        string strStartDate="";
        DateTime tempEndDate = DateTime.Now;
        string strEndDate;
        string strYear = "";
        decimal flAmount=0;
        string strPIO = "";
        string strDesc = "";
        //Class Methods
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString2"].ConnectionString;
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
        string odbcquery = "SELECT f.*,a.studyrkey FROM funding f,studyear a WHERE f.aplicantid=a.aplicantid AND f.year=a.year";
        string insertQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
        
        while (odbcreader.Read())
        {
            OdbcDataReader odbcreader2;

                strAID = Convert.ToString(odbcreader["studyrkey"]).Trim(); ;
                strSID = Convert.ToString(odbcreader["aplicantid"]).Trim();
                intFundID = Convert.ToInt32(odbcreader["fundkey"]);
                strFunderID = Convert.ToString(odbcreader["funderid"]).Trim();
                strFundTypID = Convert.ToString(odbcreader["fundtypid"]).Trim();
                tempStartDate = Convert.ToDateTime(odbcreader["begindate"]);
                tempEndDate = Convert.ToDateTime(odbcreader["enddate"]);
                strYear = Convert.ToString(odbcreader["year"]).Trim();
                strDesc = Convert.ToString(odbcreader["descriptio"]).Trim();
                flAmount = Convert.ToDecimal(odbcreader["amount"]);
                
                
                //comm.Parameters["@memo"].Value = odbcreader["memo"].ToString().Trim();
                if (tempStartDate.Month.Equals(12) && tempStartDate.Day.Equals(30) && tempStartDate.Year.Equals(1899))
                {
                    strStartDate = "";
                }
                else
                {
                    strStartDate = tempStartDate.Date.ToString("MM-dd-yyyy");
                }
                if (tempEndDate.Month.Equals(12) && tempEndDate.Day.Equals(30) && tempEndDate.Year.Equals(1899))
                {
                    strEndDate = "";
                }
                else
                {
                    strEndDate = tempEndDate.Date.ToString("MM-dd-yyyy");
                }


                insertQuery = "INSERT INTO funding VALUES(" + intFundID + "," + strAID + "," + strSID + "," + strFundTypID + "," + strFunderID + ",'" + strStartDate +"','" + strEndDate + "','"+strYear+"','" + strDesc + "'," + flAmount + ",'')";
                comm.CommandText = insertQuery;
                comm.ExecuteNonQuery();
               
           
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
                //Response.Write(err.Message.ToString());
            

        }
        Response.Write(Convert.ToChar(counter++));
        odbcreader.Close();
        sqlconn.Close();
        odbcconn.Close();
                      

        

        

    }
}
