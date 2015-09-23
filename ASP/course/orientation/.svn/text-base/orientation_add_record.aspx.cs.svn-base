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

public partial class orientation_add_record : System.Web.UI.Page
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
    
    protected void SaveUserInput()
    {
        //define connection string
        string strConn = ConfigurationManager.ConnectionStrings["usttiConnectionString"].ConnectionString;
        //open connection with database
        SqlConnection objConn = new SqlConnection(strConn);
        objConn.Open();
        //get unique student id
        int intOID = 0;
        string strQueryOID = "SELECT MAX(orientid) as OID FROM orientation";
        SqlCommand objComm1 = new SqlCommand(strQueryOID, objConn);
        SqlDataReader objReader1;
        objReader1 = objComm1.ExecuteReader();
        while (objReader1.Read())
        {

            if (objReader1.IsDBNull(0) == true)
            {
                intOID = 1;
            }
            else
            {
                intOID = Convert.ToInt32(objReader1["OID"]) + 1;
            }
        }
        objReader1.Close();
        //get user input
        string strYear = OrientationYearList.SelectedItem.Text;
        string strFromDate = start_date.GetDate();
        string strToDate = end_date.GetDate();
        string strRange = txtRange.Text;
        //create command
        string strQryInsOrientation;
        strQryInsOrientation = "INSERT INTO orientation VALUES(" + intOID + ",'" + strYear + "','" + strFromDate +
                    "','" + strToDate + "','" + strRange + "')";
        SqlCommand objComm2 = new SqlCommand(strQryInsOrientation, objConn);
        objComm2.ExecuteNonQuery();
        //close connection 
        objConn.Close();
        //redirect to confirm page
        Response.Redirect("orientation_data.aspx");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack ==false)
        {
            start_date.GenerateDateList(2006, 2020);
            end_date.GenerateDateList(2006, 2020);
            GenerateDateList();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            SaveUserInput();
        }
    }
    
}
