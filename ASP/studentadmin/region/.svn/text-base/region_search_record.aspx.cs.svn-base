/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page function as interface to search region record based on region id
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
public partial class region_data : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
    
        }
    }
    protected string DetermineQuery(string strRegionName)
    {
        string strQuery = "";
        
            if ((strRegionName.Length.Equals(0)))
            {
                strQuery = "SELECT r.* FROM region";
            }
            else
            {
                strQuery = "SELECT r.* FROM region r WHERE regionname LIKE '" + strRegionName + "%'";
            }
        
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strRegionName = txtRegionName.Text.Trim();
        string strQuery = DetermineQuery(strRegionName);
        RegionDataSource.SelectCommand = strQuery;
        dgRegion.DataBind();
        lblMessError.Visible = false;
        if (dgRegion.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgRegion.Visible = true;
        }

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception == null)
        {
           lblMessError.Visible = false;
           RegionDataSource.DataBind();
           dgRegion.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}