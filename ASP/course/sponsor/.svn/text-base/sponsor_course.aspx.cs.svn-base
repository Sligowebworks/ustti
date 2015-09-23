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

public partial class course_sponsor_sponsor_data : System.Web.UI.Page
{
    protected Decimal SponsorID;
    protected string SponsorName;

    protected void Page_Load(object sender, EventArgs e)
    {
        SponsorID = Convert.ToDecimal(Request.QueryString["sponsorid"]);
        SponsorName = Request.QueryString["sponsorname"];

        if (!Page.IsPostBack)
        {
            Label1.Text = "List of Courses Sponsored by " + SponsorName;
            SponsorCourseDataSource.SelectCommand = "SELECT sc.sponcrseid,c.*,s.sponsname FROM courses c,sponsorcrse sc,sponsors s" +
            " WHERE sc.courseid=c.courseid AND s.sponsid=c.prisponsid AND sc.sponsid=" + SponsorID + " ORDER BY c.trainfrom DESC";
            dgSponsorCourse.DataBind();
            if (dgSponsorCourse.Rows.Count == 0)
            {
                Label1.Text = SponsorName + " Does Not Sponsor Any Course";
            }
        }
    }    
}
