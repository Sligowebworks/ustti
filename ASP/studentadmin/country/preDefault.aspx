<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preDefault.aspx.cs" Inherits="student_admin" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_student_level_1" Src="~/controls/nav_student_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />

	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand"  cellspacing="0" cellpadding="0">
		    <tr>
		        <td><USTTI:header_level_0 ID="header" runat=server /></td>
			</tr>		
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" valign="top" style="height: 11px" >
                                &nbsp                         
                            </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top >							    
							    <div class="page_title">
                                    Student Management</div>
                                <div class="page_content">
                                    <h1>Student Information</h1>
                                    Student information provides you access to student personal information. In order
                                    to use student management section properly you have to satisfy the prerequisites
                                    as follows:<br />
                                    <br />
                                    Setting Country &amp; Region Table<br />
                                    This section allows you to fill information about country and region or new applicant.
                                    You have to make sure that the country of applicant is exist in this section before
                                    you go to Add New Student page .<br /><br />
                                    The following are the list of pages contained in student information section:<br /><br />
                                    <a class="sublink2" href="<%=WebFolder %>studentadmin/admission/student_data.aspx">View All Student Information</a><br /><br />
                                    Student's View page enables user to drill down more information about student such as                                  Student Personal Information<br />
                                    Course Load History,Funding History,Application History<br /><br />
                                    <a  class="sublink2" href="<%=WebFolder %>studentadmin/admission/student_search_record.aspx">Student Information</a><br /><br />
                                    This page provides another way to access student personal information by performing database search.
                                    The search feature enables user to search by student's first name or last name or both. The search result
                                    gives user options to drill down more information about student.<br /><br />
                                    <a class="sublink2" href= "<%=WebFolder %>studentadmin/admission/student_add_record.aspx">Add New Student</a> <br /><br />
                                    This page enables user to perform data entry for new student.
                                    <h1>Student Application</h1>
                                    Student application provides you access to student application information. After you enter student
                                    information in admission section you have to fill up application information related to specific student.
                                    This section also provides user capability to drill down more information about student above per application 
                                    basis. This section will be very useful to handle student applying to USTTI more than one time. <br /><br />
                                    Prerequisite:<br />
                                    Enter Student Personal Information<br />
                                    <br />
                                    The following are the list of pages contained in Application section:<br />
                                    <br />
                                    <a class="sublink2" href="<%=WebFolder %>studentadmin/application/application_data.aspx">View All Student's Application</a><br /><br />
                                    Student's Application View page enables user to drill down more information about student such as
                                    Student Personal Information,Course Load History,Funding History,Application History<br /><br />
                                    <a class="sublink2" href="<%=WebFolder %>studentadmin/application/application_search_record.aspx">Search Application Record</a> <br /><br />
                                    This page provides another way to access student personal information by performing database search.
                                    The search feature enables user to search by student's first name or last name or both. The search result
                                    gives user options to drill down more information about student.<br /><br />
                                    <a class="sublink2" href= "<%=WebFolder %>studentadmin/application/application_add_record.aspx">Add New Application</a> <br /><br />
                                    This page enables user to perform data entry for new application.<br /><br />
                                </div>
                            </td>
						</tr>
                        <tr>
                            <td >
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
