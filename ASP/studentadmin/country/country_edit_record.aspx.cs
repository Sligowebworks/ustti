/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page function as interface to capture user input in database
                    and let user perform edit and store it back in database
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
public partial class country_edit_record : System.Web.UI.Page
{
    protected void SaveUserInputinEdit(int intCtID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
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
        string strQryUpdateCountry;
        strQryUpdateCountry = "UPDATE country SET countryname='" + strCountryName + "',printablename='"+ strPrintableName+"',"+
            "countryabbr='" + strABBR +"',mailcode='"+strMailCode+"',independent='"+strIndependent+"',trainingel='"+strTrainEl+
            "',aid_eligib='"+strAidEl+"',regionid="+strRgID+" WHERE countryid=" + intCtID;
        SqlCommand objComm2 = new SqlCommand(strQryUpdateCountry, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("country_data.aspx");
    }
    protected void ViewCountryData(int intCtID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQryCountry = "SELECT * FROM country   WHERE countryid=" + intCtID;
        SqlCommand objComm = new SqlCommand(strQryCountry, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            txtCountryName.Text=Convert.ToString(objReader["countryname"]).Trim();
            txtPrintName.Text = Convert.ToString(objReader["printablename"]).Trim(); ;
            txtAbbr.Text = Convert.ToString(objReader["countryabbr"]).Trim();
            txtMailCode.Text = Convert.ToString(objReader["mailcode"]).Trim(); ;
            IndependentRadioButton.SelectedValue = Convert.ToString(objReader["independent"]).Trim();
            TrainingRadioButtonList.SelectedValue = Convert.ToString(objReader["trainingel"]).Trim();
            AidButtonList.SelectedValue = Convert.ToString(objReader["aid_eligib"]).Trim();
            RegionList.SelectedValue = Convert.ToString(objReader["regionid"]).Trim(); 
        }
        objReader.Close();
        objConn.Close();
    }
    protected int GetID()
    {
        int intCtID;
        intCtID = Convert.ToInt32(Request.QueryString["countryid"]);
        return intCtID;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
             ViewCountryData(GetID());
        }
        else
        {
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInputinEdit(GetID());
        }
    }
}
