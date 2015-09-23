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

public partial class course_assign_sponsor : UsttiPage
{
    protected Decimal CourseID;

    protected void Page_Load(object sender, EventArgs e)
    {
        CourseID = Convert.ToDecimal(Request.QueryString["courseid"].ToString());
        if ( !Page.IsPostBack )
        {
            lblCourseCode.Text = Request.QueryString["coursecode"].ToString();
            lblTitle.Text = Request.QueryString["crsetitle1"].ToString();
            ViewSponsorDetailList();
        }        
    }
    protected bool DupSponsor(string strCID, string strSPID)
    {
        bool IsDup;
        int intCounter1 = 0;
        int intCounter2 = 0;
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //check duplicate sponsor with primary sponsor
        string strQryDupSpons = "SELECT COUNT(*) as counter2 FROM courses" +
            " WHERE courseid=" + Request.QueryString["courseid"] + " AND prisponsid=" + strSPID;
        SqlCommand objComm = new SqlCommand(strQryDupSpons, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            intCounter2 = Convert.ToInt32(objReader["counter2"]);
        }
        objReader.Close();
        //check duplicate sponsor for one course
        string strQryDupSpons1 = "SELECT COUNT(*) as counter1 FROM sponsorcrse" +
            " WHERE courseid=" + Request.QueryString["courseid"] + " AND sponsid=" + strSPID;
        SqlCommand objComm1 = new SqlCommand(strQryDupSpons1, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {
            intCounter1 = Convert.ToInt32(objReader1["counter1"]);
        }
        objReader1.Close();
        if ((!intCounter1.Equals(0)) || (!intCounter2.Equals(0)))
        {
            IsDup = true;
        }
        else
        {
            IsDup = false;
        }
        return IsDup;
    }
    protected void ViewSponsorDetailList()
    {
        SponsCrsDataSource.SelectCommand = "SELECT sc.sponcrseid,sp.sponsname,sp.contact,sp.address1,sp.city,sp.phone1,sp.email" +
             " FROM sponsorcrse sc,sponsors sp WHERE sc.sponsid=sp.sponsid AND sc.courseid=" + Request.QueryString["courseid"];
        SponsCrsDataSource.DataBind();
        dgSponsCrse.Enabled = true;
        dgSponsCrse.Visible = true;
        dgSponsCrse.DataBind();
        if (dgSponsCrse.Rows.Count.Equals(0))//No sponsor listed
        {
            lblMsg.Text = "No additional sponsor for this course";
            lblMsg.Visible = true;
        }
        else
        {
            btnSave.Visible = true;
            lblMsg.Visible = false;
        }
    }
    protected void DeleteRow(object sender, EventArgs e)
    {
        lblMsgDup.Visible = false;
        if (dgSponsCrse.Rows.Count.Equals(0))//No sponsor listed
        {
            lblMsg.Text = "No additional sponsor for this course";
            lblMsg.Visible = true;
        }
        else
        {
            lblMsg.Visible = false;
        }
        ViewSponsorDetailList();
    }
    protected void AddSponsor()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique sponsor course id
        int intSCID = 0;
        string strQrySCID = "SELECT MAX(sponcrseid) as SCID FROM sponsorcrse";
        SqlCommand objComm = new SqlCommand(strQrySCID, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {

            if (objReader.IsDBNull(0) == true)
            {
                intSCID = 1;
            }
            else
            {
                intSCID = Convert.ToInt32(objReader["SCID"]) + 1;
            }
        }
        objReader.Close();
        //get user input
        int intCID = Convert.ToInt32(Request.QueryString["courseid"]);
        string strSID = MultiSponsList.SelectedValue;
        //Check Sponsor Duplication
        if (DupSponsor(lblCourseCode.Text, strSID))
        {
            lblMsgDup.Visible = true;
            lblMsgDup.Text = "The sponsor you entered already in the list";
        }
        else
        {
            lblMsgDup.Visible = false;
            string strQryInsSponsCrse;
            strQryInsSponsCrse = "INSERT INTO sponsorcrse VALUES(" + intSCID + "," + intCID + "," + strSID + ")";
            SqlCommand objComm2 = new SqlCommand(strQryInsSponsCrse, objConn);
            objComm2.ExecuteNonQuery();
            //close connection 
        }
        objConn.Close();
    }
    protected void btnAddSponsor_Click(object sender, EventArgs e)
    {
        AddSponsor();
        ViewSponsorDetailList();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {        
        Response.Redirect(WebFolder + "course/courseadmin/course_edit_record.aspx?CourseID=" + CourseID);
    }
}
