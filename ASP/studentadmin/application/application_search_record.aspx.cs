/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page function as interface to search application record based on application id
  Update History: June 6th,2006
                  - The search criteria for application is changed by using firstname and lastname keyword
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
using USTTI.Core;

public partial class application_search_record : UsttiPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            dgApplication.Visible = false;           
            
        }
        else
        {
            //nothing            
        }
    }
    protected string DetermineQuery(string strFirstName, string strLastName)
    {
        string strQuery = "";
        if ((strFirstName.Length.Equals(0)) && (strLastName.Length.Equals(0)))
        {
            //nothing
        }
        else
        {
            if ((!strFirstName.Length.Equals(0)) && (strLastName.Length.Equals(0)))
            {
                strQuery = "SELECT  a.*,s.firstname,s.lastname,(s.firstname+s.lastname) as name,c.countryname,o.date_from"+
                " FROM application a,student s,country c,orientation o WHERE a.studentid=s.studentid AND"+
                " c.countryid=s.countryid AND a.orientid=o.orientid AND s.firstname  LIKE '" + strFirstName + "%' ORDER BY a.applicationid DESC";
            }
            else
            {
                if ((strFirstName.Length.Equals(0)) && (!strLastName.Length.Equals(0)))
                {
                    strQuery = "SELECT  a.*,s.firstname,s.lastname,(s.firstname+s.lastname) as name,c.countryname,o.date_from" +
                    " FROM application a,student s,country c,orientation o WHERE a.studentid=s.studentid AND" +
                    " c.countryid=s.countryid AND a.orientid=o.orientid AND s.lastname LIKE '" + strLastName + "%' ORDER BY a.applicationid DESC";
                }
                else
                {
                    if ((!strFirstName.Length.Equals(0)) && (!strLastName.Length.Equals(0)))
                    {
                        strQuery = "SELECT a.*,s.firstname,s.lastname,(s.firstname+s.lastname) as name,c.countryname,o.date_from" +
                        " FROM application a,student s,country c,orientation o WHERE a.studentid=s.studentid AND a.orientid=o.orientid AND c.countryid=s.countryid " +
                        "AND (firstname LIKE '" + strFirstName + "%'  OR lastname LIKE '" + strLastName + "%' ) ORDER BY a.applicationid DESC";
                     }
                }
            }
        }
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strFirstName = txtFirstName.Text.Trim();
        string strLastName = txtLastName.Text.Trim();
        string strQuery = DetermineQuery(strFirstName,strLastName);
        ApplicationDataSource.SelectCommand = strQuery;
        dgApplication.DataBind();
        lblMessError.Visible = false;
        if (dgApplication.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible = true;
            lblMsgResult.Text = "Search Result";
            dgApplication.Visible = true;
        }

    }
}
