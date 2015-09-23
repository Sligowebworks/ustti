/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to show all funder records
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

public partial class funder_data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {

        if (e.Exception==null)
        {
            FunderDataSource.DataBind();
            dgFunder.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation failed because the data is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}
