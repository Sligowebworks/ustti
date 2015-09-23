/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to capture user input for country information 
                    then store it in database
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

public partial class country_add_record : System.Web.UI.Page
{
    protected void SaveUserInput()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique country id
        int intCtID = 0;
        string strQryCtID = "SELECT MAX(countryid) as CtID FROM country";
        SqlCommand objComm1 = new SqlCommand(strQryCtID, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {

            if (objReader1.IsDBNull(0) == true)
            {
                intCtID = 1;
            }
            else
            {
                intCtID = Convert.ToInt32(objReader1["CtID"]) + 1;
            }
        }
        objReader1.Close();
        //get user input
        string strCountryName = txtCountryName.Text;
        string strPrintableName = txtPrintName.Text;
        string strABBR = txtAbbr.Text;
        string strMailCode = txtMailCode.Text;
        string strIndependent = IndependentRadioButton.SelectedValue;
        string strTrainEl = TrainingRadioButtonList.SelectedValue;
        string strAidEl = AidButtonList.SelectedValue;
        string strRgID = RegionList.SelectedValue;
        //create command
     
        string strQryInsCountry;
        strQryInsCountry = "INSERT INTO country VALUES(" + intCtID + ",'" + strCountryName + "','" + strPrintableName + "','"+
            strABBR+"','"+strMailCode+"','"+strIndependent+"','"+strTrainEl+"','"+strAidEl+"','"+strRgID+"')";
        SqlCommand objComm2 = new SqlCommand(strQryInsCountry, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("country_data.aspx");
    }
    protected void InitiateRegion()
    {
       
        RegionList.DataSourceID = "RegionDataSource";
        RegionList.DataTextField = "regionname";
        RegionList.DataValueField = "regionid";
        RegionList.DataBind();
        RegionList.Items.Insert(0, "-Select Region-");
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack.Equals(false))
        {
            InitiateRegion();
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
