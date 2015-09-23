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
using USTTI.Data;

public partial class studentadmin_admission_student_check_input : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            dob_selector.GenerateDateList();
        }
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {        
        USTTIDataAccess data = new USTTIDataAccess();
        
        DataTable dt = data.GetStudentInfo(txtFirstName.Text, txtLastName.Text, dob_selector.GetDate());

        if (dt.DefaultView.Count > 0)
        {
            Response.Redirect("potential_student_matches.aspx?First=" + txtFirstName.Text + "&Last=" + txtLastName.Text + "&DOB=" + dob_selector.GetDate());
        }
        else
        {
            Response.Redirect("student_add_record.aspx?First=" + txtFirstName.Text + "&Last=" + txtLastName.Text + "&DOB=" + dob_selector.GetDate());
        }
    }
}
