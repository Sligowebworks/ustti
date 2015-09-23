/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : June 06, 2006
  Description   : - The page function as interface to search fund type record based on fund type id
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
public partial class fundtype_search_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
    
        }
    }
    protected string DetermineQuery(string strFundTypDes)
    {
        string strQuery = "";
        if (strFundTypDes.Length.Equals(0))
        {
           strQuery = "SELECT * FROM fundtype";
        }
        else
        {
          strQuery = "SELECT fdt.* FROM fundtype fdt WHERE fdt.fundtypdes LIKE '" + strFundTypDes + "%'";
        }
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strFundTypDes = txtFundTypDes.Text.Trim();
        string strQuery = DetermineQuery(strFundTypDes);
        FundTypeDataSource.SelectCommand = strQuery;
        dgFundTyp.DataBind();
        lblMessError.Visible = false;
        if (dgFundTyp.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgFundTyp.Visible = true;
        }

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception == null)
        {
           lblMessError.Visible = false;
           FundTypeDataSource.DataBind();
           dgFundTyp.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}