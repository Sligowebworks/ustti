/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to add fund type
----------------------------------------------------------------------------------------------------------*/
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class fundtype_add_record : System.Web.UI.Page
{
   protected void SaveUserInput()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique fundtype id
        int intFTID = 0;
        string strQryFTID = "SELECT MAX(fundtypid) as FTID FROM fundtype";
        SqlCommand objComm1 = new SqlCommand(strQryFTID, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {

            if (objReader1.IsDBNull(0) == true)
            {
                intFTID = 1;
            }
            else
            {
                intFTID = Convert.ToInt32(objReader1["FTID"]) + 1;
            }
        }
        objReader1.Close();
        string strDesc = txtFundTypeDesc.Text;
        //create command
        string strQryInsFundType;
        strQryInsFundType = "INSERT INTO fundtype VALUES(" + intFTID + ",'" + strDesc+"')";
        SqlCommand objComm2 = new SqlCommand( strQryInsFundType, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("fundtype_data.aspx");
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
    
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInput();
        }
    }
}

