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

public partial class migrate_applicationtable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string year = "";
        string applicdate ="";
        string arriveus = "";
        string departus = "";
        string checkoutdc = "";
        DateTime tempapplicdate =DateTime.Now ;
        DateTime temparriveus = DateTime.Now;
        DateTime tempdepartus = DateTime.Now;
        string hoteldc = "";
        DateTime tempcheckoutdc =DateTime.Now;
        string needsfund = "";
        string studyrkey = "";
        string aplicantid = "";
        string orientid = "";
        //string memo = "";
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString2"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        SqlCommand comm = new SqlCommand();
        OdbcCommand odbccomm2 = new OdbcCommand();
        //SqlDataReader sqlreader3;
        OdbcCommand odbccomm3 = new OdbcCommand();
        comm.Connection = sqlconn;
        odbccomm2.Connection = odbcconn;
        odbccomm3.Connection = odbcconn;
        string odbcquery = "SELECT year,applicdate,arrivesus,departsus,hoteldc,checkoutdc,needsfunds," +
            "studyrkey,aplicantid,orientid FROM studyear" ;
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
                tempapplicdate =Convert.ToDateTime(odbcreader["applicdate"]);
                temparriveus = Convert.ToDateTime(odbcreader["arrivesus"]);
                tempdepartus = Convert.ToDateTime(odbcreader["departsus"]);
                hoteldc = odbcreader["hoteldc"].ToString().Trim();
                tempcheckoutdc = Convert.ToDateTime(odbcreader["checkoutdc"]);
                needsfund = odbcreader["needsfunds"].ToString().Trim();
                studyrkey = odbcreader["studyrkey"].ToString().Trim();
                aplicantid = odbcreader["aplicantid"].ToString().Trim();
                orientid = odbcreader["orientid"].ToString().Trim();
                //memo = odbcreader["memo"].ToString().Trim();
                if (tempapplicdate.Month.Equals(12) && tempapplicdate.Day.Equals(30) && tempapplicdate.Year.Equals(1899))
                {
                    applicdate="";
                }
                else
                {
                    applicdate=tempapplicdate.Date.ToString("MM-dd-yyyy");
                }
                if (temparriveus.Month.Equals(12) && temparriveus.Day.Equals(30) && temparriveus.Year.Equals(1899))
                {
                    arriveus="";
                }
                else 
                {
                    arriveus=temparriveus.Date.ToString("MM-dd-yyyy");
                }
                if (tempdepartus.Month.Equals(12) && tempdepartus.Day.Equals(30) && tempdepartus.Year.Equals(1899))
                {
                    departus="";
                }
                else
                {
                    departus=tempdepartus.Date.ToString("MM-dd-yyyy");
                }
                if (tempcheckoutdc.Month.Equals(12) && tempcheckoutdc.Day.Equals(30) && tempcheckoutdc.Year.Equals(1899))
                {
                    checkoutdc = "";
                }
                else
                {
                    checkoutdc = tempcheckoutdc.Date.ToString("MM-dd-yyyy");
                }
               
                insertQuery = "INSERT INTO application(year,applicdate,arriveus,departus,hoteldc,checkoutdc,needsfunds," +
                "applicationid,studentid,orientid)VALUES('" + year + "','" + applicdate + "','" + arriveus + "','" + departus + "','" + hoteldc + "','" + checkoutdc +
                "','" + needsfund + "','" + studyrkey + "','" + aplicantid + "','" + orientid + "')";
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
