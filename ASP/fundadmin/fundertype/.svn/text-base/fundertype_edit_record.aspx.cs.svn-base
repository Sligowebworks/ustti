/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to edit funder type
----------------------------------------------------------------------------------------------------------*/
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class fundertype_edit_record : System.Web.UI.Page
{
    protected void SaveUserInputinEdit(string strFTID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get user input
        string strDesc = txtFunderTypeDesc.Text.Trim();
        //create command
        string strQryUpdateFunderType;
        strQryUpdateFunderType = "UPDATE fundertype SET fundertypdes='" + strDesc +"' WHERE fundertypid=" + strFTID;
        SqlCommand objComm2 = new SqlCommand(strQryUpdateFunderType, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("fundertype_data.aspx");
    }
    protected void ViewFundTypeData(string strFTID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQryFundType = "SELECT * FROM fundertype WHERE fundertypid=" + strFTID;
        SqlCommand objComm = new SqlCommand(strQryFundType, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            txtFunderTypeDesc.Text = Convert.ToString(objReader["fundertypdes"]).Trim();    
        }
        objReader.Close();
        objConn.Close();
    }
    protected string GetID()
    {
        string strFTID;
        strFTID = Convert.ToString(Request.QueryString["fundertypid"]);
        return strFTID;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            ViewFundTypeData(GetID());
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SaveUserInputinEdit(GetID());
    }
}
