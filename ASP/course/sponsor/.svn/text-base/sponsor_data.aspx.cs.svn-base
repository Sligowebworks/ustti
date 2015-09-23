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

public partial class sponsor_data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {

        if (e.Exception == null)
        {
            SponsorDataSource.DataBind();
            dgSponsor.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}
