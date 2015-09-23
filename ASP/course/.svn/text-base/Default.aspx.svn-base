<%@ Page Language="c#" AutoEventWireup="false" CodeFile="Default.aspx.cs" Inherits="course_admin_default" CodeBehind="Default.aspx.cs" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Course Information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css runat=server />

	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0" cellpadding=0>
			<tr>
				<td>
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding=0>
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px">
                               &nbsp</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							  
                                
                            </td>
							<td class="content_text" valign=top>
                            <div class="page_title">Course</div>
                            <div class="page_content">
                            <h1>Course Information</h1>
                            Course section enables you to administer new course conducted by USTTI. Course in
                            USTTI has primary sponsor and secondary sponsor. The web application enables you
                            to list unlimited secondary sponsors but only one primary sponsor is allowed. It
                            also restricts you to have duplicate secondary sponsor or a sponsor both
                            as primary and secondary sponsor. Another feature offered is view of students taking
                            particular course<br />
                            Prerequisite:<br />
                            <a class="sublink2" href="<%= WebFolder %>course/courseadmin/course_add_record.aspx">Enter Sponsor Information</a><br />
                            Each course is sponsored by at least one sponsor. You have to make sure that the sponsor is exist before
                            directly administering new course.<br />
                            <h1>Administering New Course</h1>
                                The procedure of administering new course process are:
                             <ol>
                                 <li>Add Course Information<br />
                                     To administer new course you have to click 
                                     <a class="sublink" href="<%= WebFolder %>course/courseadmin/course_add_record.aspx">
                                     Add Course</a> link on the menu on the left bar. It will bring you to a session enabling you to enter
                                     course information.</li>
                                 <li>Determine Single or Multiple Sponsors<br />
                                     When you enter course information in Add Course page it will ask you to choose whether this course has 
                                     more sponsors or not. If you choose more sponsors then click save button it will bring you to another
                                     page where you can add sponsors from the existing list. Otherwise you only have single sponsor which is
                                     you primary sponsor.</li>
                             </ol>
                             Important note from this section:
                             <ol>
                                  <li>Once you choose a sponsor as your primary course sponsor you can't add the same sponsor in multiple
                                      sponsor list</li>
                             </ol>
                             <h1>Update Course's Information</h1>
                                 You can update or view course existing information by following the procedure below:
                             <ol>
                                 <li>Search Course's Information by Keyword<br />
                                      You can open <a class="sublink" href="<%= WebFolder %>course/courseadmin/course_search_record.aspx">course search page</a>
                                      then you can either perform search by course code or course title. When the search result appears it gives you course
                                      information and links to view students and sponsors list associated with this course.</li>
                                 <li>Browse Student's Records<br />
                                     This page offers another method to search course's records by 
                                     <a class="sublink" href="<%= WebFolder %>course/courseadmin/course_data.aspx">viewing all records</a>.
                                     Essentially it offers the same feature like course search page except it doesn't filter course's 
                                     information by keyword. </li>
                            </ol>
                            </div>
                            </td>
						</tr>
                        <tr>
                            <td valign=bottom>
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
				</td>
			</tr>
		</table>
	</form>	
	</body>
	
</HTML>
