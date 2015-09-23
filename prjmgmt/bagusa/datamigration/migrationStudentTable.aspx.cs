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

public partial class migrate_studenttable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Class Properties
        int intStudentID = 0;
        string strHonorific = "";
        string strFirstName = "";
        string strMiddleName = "";
        string strLastName = "";
        string strSuffix = "";
        DateTime tempstrDOB = DateTime.Now;
        string strDOB = "";
        string strSex = "";
        string strOrg1 = "";
        string strOrg2 = "";
        string strTitle = "";
        string strAddr1 = "";
        string strAddr2 = "";
        string strCity = "";
        string strZipCode = "";
        string strBusPhone = "";
        string strHomePhone = "";
        string strFax = "";
        string strCellPhone = "";
        string strBusEmail = "";
        string strPerEmail = "";
        string strSpvrName = "";
        string strSpvrTitle = "";
        string strSpvrEmail = "";
        string strMemo = "";
        string strPNG = "";
        string strHomeAddr1 = "";
        string strHomeAddr2 = "";
        string strHomeCity = "";
        int intCountry = 0;
        string strHomeZipCode = "";
        string strPassNum = "";
        DateTime tempstrPassExpDate = DateTime.Now;
        string strPassExpDate = "";
        int intPassCountry = 0;
        string strLangProf = "";
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
        string odbcquery = "SELECT * FROM students";
        string insertQuery = "";
        OdbcCommand odbccomm = new OdbcCommand(odbcquery, odbcconn);
        OdbcDataReader odbcreader = odbccomm.ExecuteReader();
        int counter = 0;
        while (odbcreader.Read())
        {
            OdbcDataReader odbcreader2;
            try
            {
                intStudentID = Convert.ToInt32(odbcreader["aplicankey"]);
                strHonorific = Convert.ToString(odbcreader["honorific"]).Trim();
                strFirstName = Convert.ToString(odbcreader["firstname"]).Trim();
                strMiddleName = Convert.ToString(odbcreader["middlename"]).Trim();
                strLastName = Convert.ToString(odbcreader["lastname"]).Trim();
                strSuffix = Convert.ToString(odbcreader["suffix"]).Trim();
                tempstrDOB = Convert.ToDateTime(odbcreader["dob"]);
                strSex = Convert.ToString(odbcreader["sex"]).Trim();
                strOrg1 = Convert.ToString(odbcreader["org"]).Trim();
                strOrg2 = Convert.ToString(odbcreader["org2"]).Trim();
                strTitle = Convert.ToString(odbcreader["title"]).Trim();
                strAddr1 = Convert.ToString(odbcreader["address1"]).Trim();
                strAddr2 = Convert.ToString(odbcreader["address2"]).Trim();
                strCity = Convert.ToString(odbcreader["city"]).Trim();
                intCountry = Convert.ToInt32(odbcreader["countryid"]);
                strZipCode = "";
                strMemo = Convert.ToString(odbcreader["memo"]);
                strBusPhone = Convert.ToString(odbcreader["busphone"]).Trim();
                strHomePhone = Convert.ToString(odbcreader["homephone"]).Trim();
                strFax = Convert.ToString(odbcreader["fax"]).Trim();
                strBusEmail = Convert.ToString(odbcreader["busemail"]).Trim();
                strPerEmail = Convert.ToString(odbcreader["homeemail"]).Trim();
                strSpvrName = Convert.ToString(odbcreader["supername"]).Trim();
                strSpvrTitle = Convert.ToString(odbcreader["supertitle"]).Trim();
                //strSpvrEmail = Convert.ToString(odbcreader["superemail"]).Trim();
                strPNG = Convert.ToString(odbcreader["png"]).Trim();
                //txtMemo.Text = Convert.ToString(odbcreader["memo"]).Trim();
                strHomeAddr1 = Convert.ToString(odbcreader["homeaddr1"]).Trim();
                strHomeAddr2 = Convert.ToString(odbcreader["homeaddr2"]).Trim();
                strHomeCity = Convert.ToString(odbcreader["homecity"]).Trim();
                //comm.Parameters["@memo"].Value = odbcreader["memo"].ToString().Trim();
                if (tempstrDOB.Month.Equals(12) && tempstrDOB.Day.Equals(30) && tempstrDOB.Year.Equals(1899))
                {
                    strDOB = "";
                }
                else
                {
                    strDOB = tempstrDOB.Date.ToString("MM-dd-yyyy");
                }


                insertQuery = "INSERT INTO student VALUES(" + intStudentID + ",'" + strHonorific.Replace("'", " ") + "','" + strFirstName.Replace("'", " ") +
                 "','" + strMiddleName.Replace("'", " ") + "','" + strLastName.Replace("'", " ") + "','" + strSuffix.Replace("'", " ") + "','" + strDOB.Replace("'", " ") + "','" + strSex.Replace("'", " ") +
                 "','" + string.Concat(strOrg1.Replace("'", " "), " ", strOrg2.Replace("'", " ")) + "','','" + strTitle.Replace("'", " ") + "','" + string.Concat(strAddr1.Replace("'", " "), strAddr2.Replace("'", " ")) + "','','" + strCity.Replace("'", " ") + "','" + strZipCode.Replace("'", " ") + "','" + strBusPhone.Replace("'", " ") +
                 "','" + strHomePhone.Replace("'", " ") + "','" + strFax.Replace("'", " ") + "','" + strCellPhone.Replace("'", " ") + "','" + strBusEmail.Replace("'", " ") + "','" + strPerEmail.Replace("'", " ") +
                 "','" + strSpvrName.Replace("'", " ") + "','" + strSpvrTitle.Replace("'", " ") + "','" + strSpvrEmail.Replace("'", " ") + "','','" + strPNG.Replace("'", " ") + "','" + strMemo.Replace("'", " ") + "','" +
                 string.Concat(strHomeAddr1.Replace("'", " "), " ", strHomeAddr2.Replace("'", " ")) + "','','" + strHomeCity.Replace("'", " ") + "'," + intCountry + ",'" + strHomeZipCode.Replace("'", " ") + "','" + strPassNum.Replace("'", " ") + "','" + strPassExpDate +
                 "'," + intPassCountry + ",'','','','','')";
                comm.CommandText = insertQuery;
                comm.ExecuteNonQuery();
                counter++;

            }
            catch (Exception err)
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
        Response.Write(counter);

        odbcreader.Close();
        sqlconn.Close();
        odbcconn.Close();
                      

        

        

    }
}
