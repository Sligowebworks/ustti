/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to edit funder records 
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
using USTTI.Base;
using USTTI.Data;

public partial class course_courseadmin_course_add_record : System.Web.UI.Page
{
    private Decimal FunderID;

    protected void Page_Load(object sender, EventArgs e)
    {
        FunderID = Convert.ToDecimal(Request.QueryString["funderid"]);

        if (Page.IsPostBack == false)
        {
            ViewFundTypeData(FunderID);
            FunderTypeList.DataSourceID = "FunderTypeDataSource";
            FunderTypeDataSource.SelectCommand = "SELECT * FROM fundertype";
            FunderTypeList.DataBind();
            FunderTypeList.Items.Insert(0, "-Select Funder Type-");
        }
    }    

    protected void SaveUserInputEdit(Decimal FunderID)
    {
        USTTIDataAccess data = new USTTIDataAccess();
        Funder funder = new Funder();
        funder.FunderID = FunderID;
        funder.FunderTypeID = Convert.ToInt32(FunderTypeList.SelectedValue);
        funder.Description = txtFunderName.Text.Trim();
        data.UpdateFunderRecord(funder);
        Response.Redirect("funder_edit_record.aspx?funderid=" + FunderID);
    }

    protected void ViewFundTypeData(Decimal strFID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQryFunder = "SELECT * FROM funders WHERE funderid=" + strFID;
        SqlCommand objComm = new SqlCommand(strQryFunder, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            FunderTypeList.SelectedValue = Convert.ToString(objReader["fundertypid"]).Trim();
            txtFunderName.Text = Convert.ToString(objReader["fundername"]).Trim();
        }
        objReader.Close();
        objConn.Close();
    }
    
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid.Equals(true))
        {
            SaveUserInputEdit(FunderID);
        }
    }
}
