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

public partial class datamigration_migration2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string year = "";
        DateTime applicdate =DateTime.Now;
        string arriveus = "";
        string departus = "";
        string hoteldc = "";
        string checkoutdc = "";
        string needsfund = "";
        string studyrkey = "";
        string aplicantid = "";
        string orientid = "";
        string strConn = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
        OdbcConnection odbcconn = new OdbcConnection(strConn);
        odbcconn.Open();
        string odbcquery = "SELECT year,applicdate,arrivesus,departsus,checkoutdc," +
            "studyrkey FROM studyear";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
            while (odbcreader.Read()&& counter<10)
            {
                try
                {
                applicdate = Convert.ToDateTime(odbcreader["applicdate"]);
                arriveus = odbcreader["arrivesus"].ToString().Trim();
                departus = odbcreader["departsus"].ToString().Trim();
                //hoteldc = odbcreader["hoteldc"].ToString().Trim();
                checkoutdc = odbcreader["checkoutdc"].ToString().Trim();
                Response.Write(applicdate.Date.ToString()+"<BR>");
                counter++;
                }
                catch (SqlException err)
                {
                 
                }
            }
            Response.Write(Convert.ToChar(counter));
            odbcreader.Close();
            odbcconn.Close();
                      

        

    }
}
