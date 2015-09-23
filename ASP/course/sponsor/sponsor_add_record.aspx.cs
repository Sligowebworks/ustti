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
using System.Data;
using System.Data.SqlClient;
using USTTI.Base;
using USTTI.Data;

public partial class sponsor_add_record : System.Web.UI.Page
{
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

    protected void SaveUserInput()
    {
        USTTIDataAccess data = new USTTIDataAccess();
        Decimal SponsorID = data.GetNextSponsorID();

        Sponsor sp = new Sponsor();

        sp.SponsorID = SponsorID;
        sp.SponsorName = txtSponsorName.Text;
        sp.SponsorAbbr = txtAbbr.Text;
        sp.Contact = txtContactPerson.Text;
        sp.Address = txtAddress.Text;
        sp.City = txtCity.Text;
        sp.State = txtState.Text;
        sp.Phone1 = txtPhoneNbr1.Text;
        sp.Phone2 = txtPhoneNbr2.Text;
        sp.Fax = txtFax.Text;
        sp.Email = txtEmail.Text;
        sp.Comment = txtComment.Text;

        data.InsertSponsorRecord(sp);

        Response.Redirect("sponsor_edit_record.aspx?SponsorID=" + SponsorID);        
    }
    
    //protected void SaveUserInput()
    //{
    //    //define connection string
    //    string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
    //    //open connection with database
    //    SqlConnection objConn = new SqlConnection(strConn);
    //    objConn.Open();
    //    //get unique sponsor id
    //    int intSponsID = 0;
    //    string strQrySponsID = "SELECT MAX(sponsid) as SponsID FROM sponsors";
    //    SqlCommand objComm1 = new SqlCommand(strQrySponsID, objConn);
    //    SqlDataReader objReader1;
    //    objReader1 = objComm1.ExecuteReader();
    //    while (objReader1.Read())
    //    {

    //        if (objReader1.IsDBNull(0) == true)
    //        {
    //            intSponsID = 1;
    //        }
    //        else
    //        {
    //            intSponsID = Convert.ToInt32(objReader1["SponsID"]) + 1;
    //        }
    //    }
    //    objReader1.Close();
    //    //get user input
    //    //int intSponsID = intSponsID;
    //    string strSponsName = txtSponsorName.Text;
    //    string strSponsAbbr = txtAbbr.Text;
    //    string strContact = txtContactPerson.Text;
    //    string strAddress = txtAddress.Text;
    //    string strCity = txtCity.Text;
    //    string strState = txtState.Text;
    //    string strPhone1 = txtPhoneNbr1.Text;
    //    string strPhone2 = txtPhoneNbr2.Text;
    //    string strFax = txtFax.Text;
    //    string strEmail = txtEmail.Text;
    //    string strComment = txtComment.Text;
    //    //create command
    //    string strQryInsSpons;
    //    strQryInsSpons = "INSERT INTO sponsors VALUES(" + intSponsID + ",'" + strSponsName + "','" + strSponsAbbr +
    //        "','" + strContact + "','" + strAddress + "','','" + strCity + "','" + strState+ "','"+ strPhone1 +
    //        "','" + strPhone2 + "','" + strFax + "','" + strEmail + "','" + strComment+ "')";
    //    SqlCommand objComm2 = new SqlCommand(strQryInsSpons, objConn);
    //    objComm2.ExecuteNonQuery();
    //    //close connection 
    //    objConn.Close();
    //    //redirect to confirm page
    //    Response.Redirect("sponsor_data.aspx");
    //}
    
    
}
