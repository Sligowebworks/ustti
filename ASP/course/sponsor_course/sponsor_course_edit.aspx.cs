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

public partial class course_courseadmin_course_assign_sponsor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            tblMultiSponsorForm.Visible = false;
            CourseDataSource.SelectCommand = "SELECT c.crsetitle1,c.courseid,c.prisponsid,s.sponsname FROM courses c,sponsors s WHERE s.sponsid=c.prisponsid";                                             
        }
        else
        {
            tblMultiSponsorForm.Visible = true;
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get primary sponsor
        string strCID = CourseList.SelectedValue;
        string strPrimSpons="";
        string strQueryCID = "SELECT s.sponsname as PrimSpons FROM sponsors s,courses c WHERE s.sponsid=c.prisponsid AND c.courseid='"+strCID+"'";
        SqlCommand objComm1 = new SqlCommand(strQueryCID, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {

           strPrimSpons = Convert.ToString(objReader1["PrimSpons"]);
           
        }
        objReader1.Close();
        lblPrimSponsor.Text = "Primary Sponsor : " + strPrimSpons;
        //get user input
        SponsCrsDataSource.SelectCommand = "SELECT sp.sponsname,sp.contact,sp.address1,sp.city,sp.phone1,sp.email" +
             " FROM sponsorcrse sc,sponsors sp WHERE sc.sponsid=sp.sponsid AND sc.courseid='" + strCID + "'";
        dgSponsCrse.Enabled = true;
        dgSponsCrse.Visible = true;
        
    }
}