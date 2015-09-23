/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Last Update   : May 12, 2006
  Description   : - The page functions as an interface that shows users list of countries within region
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

public partial class region_country_record : System.Web.UI.Page
{
    protected void ViewCountryListDetail()
    {
        CountryDataSource.SelectCommand = "SELECT * " +
         "FROM country WHERE regionid=" + Request.QueryString["regionid"].ToString()+" ORDER BY countryname ASC";
        dgCountry.DataBind();
        if (dgCountry.Rows.Count == 0)
        {
            lblNullMessage.Visible = true;
        }
        else
        {
            dgCountry.Visible = true;
            lblNullMessage.Visible = false;
        }
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewCountryListDetail();
    }
}
 