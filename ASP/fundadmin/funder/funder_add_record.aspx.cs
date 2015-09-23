/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to add new funder record then store it in database
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
using USTTI.Data;
using USTTI.Base;

public partial class funder_add_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ( !Page.IsPostBack )
        {
            FunderTypeList.DataSourceID = "FunderTypeDataSource";
            FunderTypeDataSource.SelectCommand = "SELECT * FROM fundertype";
            FunderTypeList.DataBind();
            FunderTypeList.Items.Insert(0, "-Select Funder Type-");
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
        Decimal FunderID = data.GetNextFunderID();

        Funder funder = new Funder();
        funder.FunderID = FunderID;
        funder.FunderTypeID = Convert.ToInt32(FunderTypeList.SelectedValue);
        funder.Description = txtFunderName.Text;

        data.InsertFunderRecord(funder);
        Response.Redirect("funder_edit_record.aspx?funderid=" + FunderID);
    }        
}
