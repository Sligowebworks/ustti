/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page function as interface to capture region record in database
                    and let user perform edit and store it back in database
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
public partial class region_edit_record : System.Web.UI.Page
{
    protected void SaveUserInputinEdit(int intRegID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get user input
        string strRegionName = txtRegionName.Text.Trim();
        string strRegionAbbr = txtABBR.Text.Trim();
        //create command
        string strQryUpdateRegion;
        strQryUpdateRegion = "UPDATE region SET regionname='" + strRegionName + "',regionabbr='" + strRegionAbbr +
             "' WHERE regionid=" + intRegID;
        SqlCommand objComm2 = new SqlCommand(strQryUpdateRegion, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("region_data.aspx");
    }
    protected void ViewRegionData(int intRegID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQryReg = "SELECT * FROM region WHERE regionid=" + intRegID;
        SqlCommand objComm = new SqlCommand(strQryReg, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            txtABBR.Text = Convert.ToString(objReader["regionabbr"]).Trim();
            txtRegionName.Text=Convert.ToString(objReader["regionname"]).Trim();
        }
        objReader.Close();
        objConn.Close();
    }
    protected int GetID()
    {
        int intRegID;
        intRegID = Convert.ToInt32(Request.QueryString["regionid"]);
        return intRegID;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            ViewRegionData(GetID());
        }
        else
        {
            
        }

    }
    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        SaveUserInputinEdit(GetID());
    }
}