/*---------------------------------------------------------------------------------------------------------
  Sligo Computer Service 2006 
  Developer     : Bagus Adiyanto
  Date          : May 12th, 2006
  Description   : - The page function to edit user input for course information  
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
using USTTI.Core;
using USTTI.Base;
using USTTI.Data;

public partial class course_edit_record : UsttiPage
{
    protected Decimal CourseID;
    protected void Page_Load(object sender, EventArgs e)
    {
        CourseID = Convert.ToDecimal(Request.QueryString["CourseID"]);
        if ( !Page.IsPostBack )
        {
            start_date.GenerateDateList(2006, 2020);
            end_date.GenerateDateList(2006, 2020);
            GenerateDateList();
            ViewCourseData(CourseID);
        }
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
    
    protected void InitiateSponsorList()
    {
        SponsorList.DataSourceID = "SponsorDataSource";
        SponsorList.DataTextField = "sponsname";
        SponsorList.DataValueField = "sponsid";
        SponsorList.DataBind();
        SponsorList.Items.Insert(0, "-Select Sponsor-");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SaveUserInput(CourseID);

        if (MoreSponsorRadioButtonList.SelectedValue.Equals("Yes"))
        {
            Response.Redirect(WebFolder + "course/courseadmin/course_assign_sponsor.aspx?courseid=" + CourseID + "&coursecode=" + lblCourseID.Text + "&crsetitle1=" + txtTitle.Text.Trim());
        }
        else
        {
            Response.Redirect("course_edit_record.aspx?CourseID=" + CourseID);
        }
    }

    protected void SaveUserInput(Decimal CourseID)
    {
        USTTIDataAccess data = new USTTIDataAccess();
        Course course = new Course();

        course.CourseID = CourseID;
        course.Title = txtTitle.Text;
        course.Location = txtLocation.Text;
        course.Coordinator = txtCoordinator.Text;
        course.StartDate = start_date.GetDate();
        course.EndDate = end_date.GetDate();
        course.Comments = txtComment.Text;
        course.Slots = txtSlot.Text;
        course.SID = SponsorList.SelectedValue;
        course.MoreSponsor = MoreSponsorRadioButtonList.SelectedValue;
        course.Year = YearList.Text;

        data.UpdateCourseRecord(course);
    }    

    protected void ViewCourseData(Decimal strCID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQueryCourse = "SELECT * FROM courses WHERE courseid='" + strCID+"'";
        SqlCommand objComm = new SqlCommand(strQueryCourse, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            lblCourseID.Text=Convert.ToString(objReader["coursecode"]).Trim(); ;
            txtTitle.Text=Convert.ToString(objReader["crsetitle1"]).Trim();
            txtLocation.Text = Convert.ToString(objReader["location"]).Trim();
            txtCoordinator.Text = Convert.ToString(objReader["coordinator"]).Trim(); ;
            start_date.fillControl(Convert.ToString(objReader["trainfrom"]).Trim());
            end_date.fillControl(Convert.ToString(objReader["trainto"]).Trim());
            txtComment.Text= Convert.ToString(objReader["comments"]).Trim();
            if (Convert.ToDecimal(objReader["slots"]) > 0)
            {
                txtSlot.Text = Convert.ToString(objReader["slots"]);
            }
            SponsorList.SelectedValue = Convert.ToString(objReader["prisponsid"]).Trim();
            MoreSponsorRadioButtonList.SelectedValue=Convert.ToString(objReader["morespons"]).Trim(); ;
            YearList.SelectedValue = Convert.ToString(objReader["courseyear"]).Trim();
     }
        objReader.Close();
        objConn.Close();
        
    }
    
    protected void DeleteSponsor(object sender, EventArgs e)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQryDelAddSponsor = "DELETE sponsorcrse WHERE courseid='"+Request.QueryString["courseid"]+"'";
        SqlCommand objComm = new SqlCommand(strQryDelAddSponsor, objConn);
        objComm.ExecuteNonQuery();
        objConn.Close();
    }
    
}
