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

public partial class search_adhocSearch : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtYear.Text = DateTime.Now.Year.ToString();
            Session.Remove("USTTILIST");
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string url = buildUrlSearch();
            Response.Redirect(url);
        }
    }

    public void CustomValidatorOrientationDate(object source, ServerValidateEventArgs args)
    {
        string valuePassed = string.Empty;

        if (args.Value != null)
        {
            valuePassed = args.Value;

            DateTime dt = DateTime.MinValue;

            args.IsValid = true;

            try
            {
                IFormatProvider format = new System.Globalization.CultureInfo("en-US");

                dt = DateTime.Parse(valuePassed, format, System.Globalization.DateTimeStyles.None);
            }
            catch
            {
                args.IsValid = false;
            }
        }
    }

    public void CustomValidatorStartDate(object source, ServerValidateEventArgs args)
    {
        string valuePassed = string.Empty;

        if (args.Value != null)
        {
            valuePassed = args.Value;

            DateTime dt = DateTime.MinValue;

            args.IsValid = true;

            try
            {                
                IFormatProvider format = new System.Globalization.CultureInfo( "en-US");

                dt = DateTime.Parse(valuePassed, format, System.Globalization.DateTimeStyles.None);
            }
            catch
            {
                args.IsValid = false;
            }
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("adhocSearch.aspx");
    }

    private string buildUrlSearch()
    {        
        string url = "searchResults.aspx?1=1";

        if (txtLastName.Text.Length > 0)
            url += "&Last=" + txtLastName.Text + "";

        if ( txtFirstName.Text.Length > 0 )
            url += "&First=" + txtFirstName.Text + "";

        if ( txtdob.Text.Length > 0 )
            url += "&DOB=" + txtdob.Text + "";

        if ( txtOrientationDate.Text.Length > 0 )
            url += "&Orientation Start=" + txtOrientationDate.Text + "";

        if ( txtApplicantId.Text.Length > 0 )
            url += "&Applicant ID=" + txtApplicantId.Text + "";

        if ( txtCountry.Text.Length > 0 )
            url += "&Country=" + txtCountry.Text + "";

        if ( txtCourseNum.Text.Length > 0 )
            url += "&Course Num=" + txtCourseNum.Text + "";

        if ( txtCourseTitle.Text.Length > 0 )
            url += "&Title=" + txtCourseTitle.Text + "";

        if ( txtCourseStartDate.Text.Length > 0 )
            url += "&Start Date=" + txtCourseStartDate.Text + "";

        if ( ( txtYear.Text.Length > 0 ) && (StartYear.Text.Length == 0) && (EndYear.Text.Length == 0) )
            url += "&Year=" + txtYear.Text + "";

        if (txtSponsor.Text.Length > 0)
            url += "&Sponsor=" + txtSponsor.Text;

        if (txtFunder.Text.Length > 0)
            url += "&Name=" + txtFunder.Text;

        if (GenderGroup.SelectedValue.Length > 0)
            url += "&Gender=" + GenderGroup.SelectedValue.ToString();

        if (ParticipantGroup.SelectedValue.Length > 0)
            url += "&Participat=" + ParticipantGroup.SelectedValue.ToString();

        if ((StartYear.Text.Length > 0) && (EndYear.Text.Length > 0))
            url += "&Years=" + StartYear.Text + "," + EndYear.Text;

        return url;
    }
}

    
