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

public partial class course_search_record : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string DetermineQuery(string strCID,string strCrsTitle)
    {
        string strQuery="";
        if ((strCID.Length.Equals(0)) && (strCrsTitle.Length.Equals(0)))
        {
            //nothing
        }
        else
        {
            if ((!strCID.Length.Equals(0)) && (strCrsTitle.Length.Equals(0)))
            {
                strQuery = "SELECT c.*,s.sponsname FROM courses c,sponsors s WHERE c.prisponsid=s.sponsid AND coursecode LIKE '%" + strCID+"%'";
            }
            else
            {
                if ((strCID.Length.Equals(0)) && (!strCrsTitle.Length.Equals(0)))
                {
                    strQuery = "SELECT c.*,s.sponsname FROM courses c,sponsors s WHERE c.prisponsid=s.sponsid AND crsetitle1 LIKE '%" + strCrsTitle + "%'";
                }
                else
                {
                    if ((!strCID.Length.Equals(0)) && (!strCrsTitle.Length.Equals(0)))
                    {
                        strQuery = "SELECT c.*,s.sponsname FROM courses c,sponsors s WHERE c.prisponsid=s.sponsid AND courseid LIKE '%" + strCID + "%'" +
                            " AND crsetitle1 LIKE '" + strCrsTitle + "%'";
                    }
                }
            }
        }
        return strQuery;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strCID = txtCourseID.Text.Trim();
        string strCrsTitle = txtCourseTitle.Text.Trim();
        string strQuery = DetermineQuery(strCID, strCrsTitle);
        CourseDataSource.SelectCommand = strQuery;
        dgCourse.DataBind();
        lblMessError.Visible = false;
        if (dgCourse.Rows.Count.Equals(0))
        {
            lblMsgResult.Text = "No Record Found";
            lblMsgResult.Visible = true;
        }
        else
        {
            lblMsgResult.Visible=true;
            lblMsgResult.Text="Search Result";
            dgCourse.Visible = true;
        }
    }
    protected void DeleteRow(object sender, GridViewDeletedEventArgs e)
    {

        if (e.Exception == null)
        {
            CourseDataSource.DataBind();
            dgCourse.DataBind();
        }
        else
        {
            e.ExceptionHandled = true;
            lblMessError.Text = "Delete operation is fail because the data you deleted is still referenced by other data";
            lblMessError.Visible = true;
        }
    }
}
