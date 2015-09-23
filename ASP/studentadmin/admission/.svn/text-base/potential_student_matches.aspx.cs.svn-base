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

public partial class studentadmin_admission_Potential_Student_Matches : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!Page.IsPostBack)
        {
            FillGrid();        
        }
    }

    private void FillGrid()
    {
        USTTIDataAccess data = new USTTIDataAccess();
        DataTable dt = data.GetStudentInfo(Request["First"], Request["Last"], Request["DOB"]);
        dgStudent.DataSource = dt;
        dgStudent.DataBind();
    }

    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_add_record.aspx?First=" + Request["First"] + "&Last=" + Request["Last"] + "&DOB=" + Request["DOB"]);        
    }
}
