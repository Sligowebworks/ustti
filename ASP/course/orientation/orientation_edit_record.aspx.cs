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

public partial class orientation_edit_record : System.Web.UI.Page
{
    
    protected void GenerateDateList()
    {
        //initialization
        int intTodayYear = Convert.ToInt32(DateTime.Now.Year);

        //generate Year List
        OrientationYearList.Items.Add("-Select Year-");
        for (int i = intTodayYear; i <= intTodayYear + 20; i++)
        {
            OrientationYearList.Items.Add(Convert.ToString(i));
        }

    }
    protected void SaveUserInputinEdit(string strOID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get user input
        string strYear = OrientationYearList.SelectedItem.Text;
        string strFromDate = start_date.GetDate();
        string strToDate = end_date.GetDate();
        string strRange = txtRange.Text;
        //create command
        string strQryUpdOrientation;
        strQryUpdOrientation = "UPDATE orientation SET orientation_year='" + strYear + "',date_from='" + strFromDate +
            "',date_to='" + strToDate + "',daterange='" + strRange + "' WHERE orientid=" + strOID;
        SqlCommand objComm = new SqlCommand(strQryUpdOrientation, objConn);
        objComm.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("orientation_data.aspx");
    }
    protected void ViewOrientationData(string strOID)
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //create query command
        string strQueryStudent = "SELECT * FROM orientation WHERE orientid=" + strOID;
        SqlCommand objComm = new SqlCommand(strQueryStudent, objConn);
        SqlDataReader objReader;
        objReader = objComm.ExecuteReader();
        while (objReader.Read())
        {
            OrientationYearList.Text=Convert.ToString(objReader["orientation_year"]); 
            start_date.fillControl(Convert.ToString(objReader["date_from"]));
            end_date.fillControl(Convert.ToString(objReader["date_to"]));
            txtRange.Text = Convert.ToString(objReader["daterange"]).Trim();
        }
        objReader.Close();
        objConn.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack ==false)
        {
            GenerateDateList();
            start_date.GenerateDateList(1980, 2020);
            end_date.GenerateDateList(1980, 2020);
            ViewOrientationData(Request.QueryString["orientid"]);
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInputinEdit(Request.QueryString["orientid"]);
        }
    }
    
}
