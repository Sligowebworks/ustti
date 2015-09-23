/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface to search funder records 
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

public partial class funder_search_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string DetermineQuery(string strFunderName)
    {
        string strQuery = "";
        if ((strFunderName.Length.Equals(0)))
        {
            strQuery = "SELECT f.funderid,f.fundername,ft.fundertypdes FROM "+
            "funders f,fundertype ft where f.fundertypid=ft.fundertypid ORDER BY f.funderid DESC";
        }
        else
        {
            strQuery = "SELECT f.funderid,f.fundername,ft.fundertypdes FROM "+
            "funders f,fundertype ft where f.fundertypid=ft.fundertypid AND fundername LIKE '%" + strFunderName + "%' ORDER BY f.funderid DESC";
        }
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strFunderName = txtFunderName.Text.Trim();
        string strQuery = DetermineQuery(strFunderName);
        FunderDataSource.SelectCommand = strQuery;
        dgFunder.DataBind();
        lblMessError.Visible = false;
        if (dgFunder.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgFunder.Visible = true;
        }

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {

        if (e.Exception == null)
        {
            FunderDataSource.DataBind();
            dgFunder.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}

