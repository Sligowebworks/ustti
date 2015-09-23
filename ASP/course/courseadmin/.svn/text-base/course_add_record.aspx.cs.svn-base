/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12th, 2006
  Description   : - The page function to capture user input for new course information  
  Update History: - June 15th,2006
                    The initial design requires user to enter additional sponsors in the same page
                    now there is additional page for entering additional sponsor therefore this page
                    will redirect user to that page if they click radio button for multisponsors
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
using USTTI.Base;
using USTTI.Data;

public partial class course_add_record : System.Web.UI.Page
{
    protected Decimal CourseID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if ( !Page.IsPostBack)
        {
            InitiateSponsorList();
            start_date.GenerateDateList(2006, 2020);
            end_date.GenerateDateList(2006, 2020);
            GenerateDateList();
        }
    }

    protected void InitiateSponsorList()
    {
        SponsorList.DataSourceID = "SponsorDataSource";
        SponsorList.DataTextField = "sponsname";
        SponsorList.DataValueField = "sponsid";
        SponsorList.DataBind();
        SponsorList.Items.Insert(0, "-Select Sponsor-");
    }

    protected void GenerateDateList()
    {
        int intTodayYear = DateTime.Now.Year;
        //generate Year List
        YearList.Items.Add("-Select Year-");
        for (int i = intTodayYear; i <= intTodayYear + 20; i++)
        {
            YearList.Items.Add(Convert.ToString(i));
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SaveUserInput();

        if (MoreSponsorRadioButtonList.SelectedValue.Equals("Yes"))
        {
            Response.Redirect("course_assign_sponsor.aspx?courseid=" + CourseID + "&coursecode=" + txtCourseCode.Text + "&crsetitle1=" + txtTitle.Text.Trim());
        }
        else
        {
            Response.Redirect("course_edit_record.aspx?CourseID=" + CourseID);
        }
    }

    protected void SaveUserInput()
    {
        USTTIDataAccess data = new USTTIDataAccess();
        Course course = new Course();

        CourseID = data.GetNextCourseID();

        course.CourseID = CourseID;
        course.Code = txtCourseCode.Text;
        course.Title = txtTitle.Text;
        course.Location = txtLocation.Text;
        course.Coordinator = txtCoordinator.Text;
        course.StartDate = start_date.GetDate();
        course.EndDate = end_date.GetDate();
        course.Comments = txtComment.Text;
        course.Slots = txtSlot.Text;
        course.SponsorList = SponsorList.SelectedValue;
        course.MoreSponsor = MoreSponsorRadioButtonList.SelectedValue;
        course.Year = YearList.SelectedItem.Text;

        data.InsertCourseRecord(course);     
    }                   
}
