/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface that let user to add new region
                    and store it in database
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
public partial class region_add_record : System.Web.UI.Page
{
    protected void SaveUserInput()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique region id
        int intRgID = 0;
        string strQryRegID = "SELECT MAX(regionid) as RgID FROM region";
        SqlCommand objComm1 = new SqlCommand(strQryRegID, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {

            if (objReader1.IsDBNull(0) == true)
            {
                intRgID = 1;
            }
            else
            {
                intRgID = Convert.ToInt32(objReader1["RgID"]) + 1;
            }
        }
        objReader1.Close();
        //get user input
        string strRegionaName = txtRegionName.Text;
        string strRegionAbbr = txtABBR.Text;
        //create command
        string strQryInsReg;
        strQryInsReg = "INSERT INTO region VALUES(" + intRgID + ",'" + strRegionAbbr + "','" + strRegionaName + "')";
        SqlCommand objComm2 = new SqlCommand(strQryInsReg, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("region_data.aspx");
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
    
        }
        else
        {
            
        }

    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid==true)
        {
            SaveUserInput();
        }
    }
}