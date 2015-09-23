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
using USTTI.Data;
using USTTI.Base;

public partial class sponsor_edit_record : System.Web.UI.Page
{
    private Decimal SponsorID;

    protected void Page_Load(object sender, EventArgs e)
    {
        SponsorID = Convert.ToDecimal(Request["SponsorID"]);
        if (Page.IsPostBack == false)
        {            
            ViewSponsorData(SponsorID);
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInputEdit(SponsorID);
        }
    }

    protected void SaveUserInputEdit(Decimal SponsorID)
    {
        USTTIDataAccess data = new USTTIDataAccess();
        Sponsor sp = new Sponsor();

        sp.SponsorID = SponsorID;
        sp.SponsorName = txtSponsorName.Text.Trim();
        sp.SponsorAbbr = txtAbbr.Text.Trim();
        sp.Contact = txtContactPerson.Text.Trim();
        sp.Address = txtAddress.Text.Trim();
        sp.City = txtCity.Text.Trim();
        sp.State = txtState.Text.Trim();
        sp.Phone1 = txtPhoneNbr1.Text.Trim();
        sp.Phone2 = txtPhoneNbr2.Text.Trim();
        sp.Fax = txtFax.Text.Trim();
        sp.Email = txtEmail.Text.Trim();
        sp.Comment = txtComment.Text.Trim();

        data.UpdateSponsorRecord(sp);
        Response.Redirect("sponsor_edit_record.aspx?SponsorID=" + SponsorID);
    }    

    protected void ViewSponsorData(Decimal intSponsID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQrySpons = "SELECT * FROM sponsors WHERE sponsid=" + intSponsID;
        SqlCommand objComm = new SqlCommand(strQrySpons, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            txtSponsorName.Text=Convert.ToString(objReader["sponsname"]).Trim();
            txtAbbr.Text = Convert.ToString(objReader["sponsabbr"]).Trim();
            txtContactPerson.Text = Convert.ToString(objReader["contact"]).Trim();
            txtAddress.Text = Convert.ToString(objReader["address1"]).Trim();
            txtCity.Text = Convert.ToString(objReader["city"]).Trim();
            txtState.Text = Convert.ToString(objReader["state"]).Trim();
            txtPhoneNbr1.Text = Convert.ToString(objReader["phone1"]).Trim();
            txtPhoneNbr2.Text = Convert.ToString(objReader["phone2"]).Trim();
            txtFax.Text = Convert.ToString(objReader["fax"]).Trim();
            txtEmail.Text = Convert.ToString(objReader["email"]).Trim();
            txtComment.Text = Convert.ToString(objReader["comments"]).Trim();
        }
        objReader.Close();
        objConn.Close();
    }        
}
