/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12, 2006
  Description   : - The page function as interface to perform search student record based on
                    studentid and last name criteria
  Update Info   : June 6th, 2006
                  - Add search criteria firstname and omit student id as criteria  
                  June 12th, 2006
                  - Add code in postback call to assign Session variable
                  June 20th, 2006
                  - Change the query so it will support to find duplicate person registered using last name
                    as firstname vice versa
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
using USTTI;
public partial class student_search_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected string DetermineQuery(string FName , string LName )
    {
        string Select = "SELECT s.*, c.countryname FROM student s INNER JOIN country c ON s.countryid = c.countryid ";
        string Where = " WHERE ";
        string Order = " ORDER BY s.lastname ASC, s.firstname ASC; ";
        
        if ((!FName.Length.Equals(0)) && (!LName.Length.Equals(0)))
        //when both fields are entered, consider that they might be switched
        {
            Where += "  ( (s.firstname='" + FName + "' AND s.lastname='" + LName + "')"
				+ " OR(s.firstname='" + LName + "' AND s.lastname='" + FName + "') )  ";
        }
        else if ((!FName.Length.Equals(0)) ||  (!LName.Length.Equals(0)))
        {
			string Search = (FName.Length > LName.Length) ? FName.ToString() : LName.ToString();
			Where += " ( s.firstname LIKE '%" + Search + "%' ) ";
            Where += " OR ";
            Where += " (s.lastname LIKE '%" + Search + "%' ) ";
        }
        else
        {
			throw new Exception("Please enter a query.");
		}

        return Select + Where + Order;
    }
    
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strFirstName = txtFirstName.Text.Trim();
        string strLastName = txtLastName.Text.Trim();
        lblMessError.Visible = false;
        lblMsgResult.Visible = true;
        
        try
        {
			string strQuery = DetermineQuery(strFirstName, strLastName);
			StudentDataSource.SelectCommand = strQuery;
			dgStudent.DataBind();

			if (dgStudent.Rows.Count.Equals(0))
			{
				lblMsgResult.Text = "No Records Found";
			}
			else
			{
				lblMsgResult.Text = "Search Result";
				dgStudent.Visible = true;
	        }
        }
        catch (Exception Exc)
        {
			lblMessError.Visible = true;
			 lblMsgResult.Visible = false;
        
            lblMessError.Text = Exc.Message.ToString();
            dgStudent.Visible = false;
        }
    }
    
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception.Equals(null))
        {
            //Nothing
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "The delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}