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
public partial class datamigration_CleanDuplicationOnFunding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string strConn1 = ConfigurationManager.ConnectionStrings["usttiConnectionString2"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(strConn1);
        sqlconn.Open();
        string strQryShowDupOnFunding = "select fundid,count(fundid) from funding" +
            " group by fundid having count(fundid)>1 order by fundid";
        SqlCommand comm1 = new SqlCommand(strQryShowDupOnFunding, sqlconn);
        SqlDataReader reader1 = comm1.ExecuteReader();
        ArrayList fundid=new ArrayList();
        while (reader1.Read())
        {
            fundid.Add(Convert.ToInt16(reader1["fundid"]));
        }
        reader1.Close();
        SqlCommand comm2 = new SqlCommand();
        comm2.Connection=sqlconn;
        ArrayList appid = new ArrayList();
        int initappid = 0;
        foreach(Int16 j in fundid)
        {
            string ShowAppOnFund = "SELECT studentid,applicationid FROM funding" +
               " WHERE fundid=" + j;
            comm2.CommandText=ShowAppOnFund;
            SqlDataReader reader2=comm2.ExecuteReader();
            while(reader2.Read())
            {
                initappid=Convert.ToInt32(reader2["applicationid"]);
            }
            appid.Add(initappid);
            reader2.Close();
        }
        SqlCommand comm4=new SqlCommand();
        comm4.Connection = sqlconn;
        foreach (Int32 k in appid)
        {
            comm4.CommandText = "DELETE FROM studentcourse WHERE applicationid=" + k;
            comm4.ExecuteNonQuery();
        }
        sqlconn.Close();
    }
}
