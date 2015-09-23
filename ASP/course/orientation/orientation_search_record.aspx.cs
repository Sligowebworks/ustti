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

public partial class orientation_search_record : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
    
        }
    }
    protected void cmdSearch_Click(object sender, EventArgs e)
    {
        if (Page.IsValid.Equals(true))
        {
            OrientationDataSource.SelectCommand = "SELECT * FROM orientation" +
                " WHERE date_from = '" + txtOrientStartDate.Text.Trim()+"'";
            dgOrientation.DataBind();
            lblMessError.Visible = false;
            if (dgOrientation.Rows.Count.Equals(0))
            {
                lblSearchResult.Visible = true;
                lblSearchResult.Text = "Record No Found";
            }
            else
            {
                lblSearchResult.Text = "Search Result";
                lblSearchResult.Visible = true;
                dgOrientation.Visible = true;
            }
        }
        
    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {

        if (e.Exception == null)
        {
            OrientationDataSource.DataBind();
            dgOrientation.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}
