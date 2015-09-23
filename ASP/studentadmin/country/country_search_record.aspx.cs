/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page function as interface to search country record based on country id
  Update History: June 8th,2006
                  - country id as search parameter is omited
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

public partial class country_search_record : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected string DetermineQuery(string strCountryName)
    {
        string strQuery = "";
        if (strCountryName.Length.Equals(0))
        {
            //nothing
        }
        else
        {
            strQuery = "SELECT c.*,r.regionname FROM country c,region r WHERE c.regionid=r.regionid AND countryname LIKE '" + strCountryName + "%'";
        }
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strCountryName = txtCountryName.Text.Trim();
        string strQuery = DetermineQuery(strCountryName);
        CountryDataSource.SelectCommand = strQuery;
        dgCountry.DataBind();
        lblMessError.Visible = false;
        if (dgCountry.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgCountry.Visible = true;
        }

    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {

        if (e.Exception == null)
        {
            lblMessError.Visible = false;
            CountryDataSource.DataBind();
            dgCountry.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}
