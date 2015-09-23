<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nav_level_0.ascx.cs" Inherits="controls_nav_level_0" %>
<table border=0 cellpadding=0 cellspacing=0 width="220">
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>home.aspx">Application Tracking Student</a>
        </div>
    </td>
</tr>
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>search/default.aspx">Search</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>search/adhocSearch.aspx">Ad Hoc Search</a></div></td></tr>
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>studentadmin/default.aspx">Student</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>studentadmin/admission/student_search_record.aspx">Search Student</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>studentadmin/admission/student_data.aspx">View All Students</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>studentadmin/admission/student_check_input.aspx">Add Student</a></div></td></tr>
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>fundadmin/default.aspx">Funder</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>fundadmin/funder/funder_search_record.aspx">Search Funder</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>fundadmin/funder/funder_data.aspx">View All Funders</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>fundadmin/funder/funder_add_record.aspx">Add Funder</a></div></td></tr>
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>course/sponsor/default.aspx">Sponsor</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/sponsor/sponsor_search_record.aspx">Search Sponsor</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/sponsor/sponsor_data.aspx">View All Sponsors</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/sponsor/sponsor_add_record.aspx">Add Sponsor</a></div></td></tr>
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>course/default.aspx">Course</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/courseadmin/course_search_record.aspx">Search Course</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/courseadmin/course_data.aspx">View All Courses</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/courseadmin/course_add_record.aspx">Add Course</a></div></td></tr>
<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>reports/default.aspx">Reports</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/trainingfactsheet/Default.aspx">Training Fact Sheet</a></div></td></tr> 
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/country/participatecountry/Default.aspx">Participate Countries</div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/country/notattendcoursecountry/Default.aspx">Not Attend Course Countries</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/country/nonparticipatecountry/Default.aspx">Non Participate Countries</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>report/biosheet/Default.aspx">Individual Bio Sheet</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/participant/participantbycountry.aspx">Participant List by Country</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/participant/participantbycourse.aspx">Participant List by Course</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/course/Default.aspx">Course by Sponsor</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>reports/trainingyearcoursefactsheet/Default.aspx">Training Year Course Fact Sheet</a></div></td></tr>

<tr>
    <td>
        <div class="menu_header">
            <a class="mainlink" href="<%= WebFolder%>fundadmin/default.aspx">Administration</a>
        </div>
    </td>
</tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>course/orientation/orientation_search_record.aspx">Orientation</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>fundadmin/fundtype/fundtype_search_record.aspx">Funding Types</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>fundadmin/fundertype/fundertype_search_record.aspx">Funder Type</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>studentadmin/country/country_search_record.aspx">Countries</a></div></td></tr>
<tr><td><div class="menu_content"><a class="mainlink" href="<%= WebFolder%>studentadmin/region/region_search_record.aspx">Region</a></div></td></tr>


</table>