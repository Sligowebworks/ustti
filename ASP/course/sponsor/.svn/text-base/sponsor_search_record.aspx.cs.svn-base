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

public partial class sponsor_search_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected string DetermineQuery(string strSponsName)
    {
        string strQuery = "";
        if (strSponsName.Length.Equals(0))
        {
            strQuery = "SELECT * FROM sponsors ORDER BY sponsname ASC";
        }
        else
        {
            strQuery = "SELECT * FROM sponsors WHERE sponsname LIKE '%" + strSponsName + "%' ORDER BY sponsname ASC";
        }
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strSponsName = txtSponsorName.Text.Trim();
        loadTable(strSponsName);
    }

    protected void loadTable(string sponsor)
    {        
        string strQuery = DetermineQuery(sponsor);
        SponsorDataSource.SelectCommand = strQuery;
        dgSponsor.DataBind();
        lblMessError.Visible = false;
        if (dgSponsor.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgSponsor.Visible = true;
        }
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

    protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        dgSponsor.PageIndex = e.NewPageIndex;        
        string strSponsName = txtSponsorName.Text.Trim();
        loadTable(strSponsName);
    }


}
