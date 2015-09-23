/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : June 06, 2006
  Description   : - The page function as interface to search funder type record based on funder type id
*----------------------------------------------------------------------------------------------------------*/
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
public partial class fundertype_search_record : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
    
        }
    }
    protected string DetermineQuery(string strFunderTypDes)
    {
        string strQuery = "";
         if (strFunderTypDes.Length.Equals(0))
         {
                strQuery = "SELECT fdt.* FROM fundertype fdt";
         }
         else
         {
                strQuery = "SELECT fdt.* FROM fundertype fdt WHERE fdt.fundertypdes LIKE '" + strFunderTypDes + "%'";
         }
         return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strFunderTypDes = txtFunderTypDes.Text.Trim();
        string strQuery = DetermineQuery(strFunderTypDes);
        FundertypeDataSource.SelectCommand = strQuery;
        dgFunderTyp.DataBind();
        lblMessError.Visible = false;
        if (dgFunderTyp.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgFunderTyp.Visible = true;
        }

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception == null)
        {
           lblMessError.Visible = false;
           FundertypeDataSource.DataBind();
           dgFunderTyp.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}