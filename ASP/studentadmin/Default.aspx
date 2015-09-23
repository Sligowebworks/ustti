<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="student_admin" %>
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
							    <div class="page_title">Student </div>
							    <div class="page_content">
                                    <h1>Student Information</h1>
                                    Student information provides you access to student's personal information, student's
                                    application, student's courseload and student's funding. In order
                                    to use student section properly you have to satisfy the prerequisites
                                    as follows:<br />
                                    <br />
                                    Setting Country &amp; Region Table<br />
                                    This section allows you to fill information about country and region or new applicant.
                                    You have to make sure that the country of applicant is exist in this section before
                                    you go to Add New Student page .<br />
                                    
                                    <h1>New Student Admission</h1>
                                    The procedure of new student admission process are:
                                    <ol>
                                        <li>Add Personal Information<br />
                                            To start the new student admission process you have to click 
                                            <a class="sublink" href="<%= WebFolder %>studentadmin/admission/student_search_record.aspx">
                                            Add Student</a> link on the menu on the left bar. It will bring you to a session enabling you to enter
                                            student personal information.</li>
                                        <li>Add Student's Application<br />
                                            This section enables user to enter information such as student's arrival, departure,
                                            etc. The student's application also enables user to identify student who have participated
                                            with USTTI program for multiple times</li>
                                        <li>Add Courseload<br />
                                            Courseload allows user to add courses that has been chosen by student in each application.</li>
                                        <li>Add Funder<br />
                                            This section requires user to list all funders that are willing to assist student
                                            with living expense when they study in United States</li>
                                    </ol>
                                    Important note from this section:
                                    <ol>
                                        <li>The web application strictly enforces you to follow the procedure above therefore
                                            you can't by pass each of the process. Example: You can't go to student's courseload page unless you have enter student's
                                            personal information and application.</li>
                                        <li>You don't have to go to the whole procedure at once. In some case you don't have all information through the whole process.
                                            The web application provides feature where you can stop going to the whole procedure and come back later. Example: You don't 
                                            have student's funder information for student A to fill up in student's funding page. Therefore you can click save & back later button to
                                            save all information. Whenever you have funder information for student A you can come back to student A record through the procedure
                                            for Update Student's Information in the next section below.</li>
                                    </ol>
                                    
                                    <h1>Update Student's Information</h1>
                                    You can update or view student existing information by following the procedure below:
                                    <ol>
                                        <li>Search Student's Information by Keyword<br />
                                            You can open <a class="sublink" href="<%= WebFolder %>studentadmin/admission/student_search_record.aspx">student search page</a>
                                            then you can either perform search by first name or last name or both. When the search result appears it gives you student
                                            first name,last name, date of birth and student detail view link. If you click the link it will show you the detail information
                                            about a student from personal information, application history, courseload history and funding</li>
                                        <li>Browse Student's Records<br />
                                            This page offers another method to search student's records by 
                                            <a class="sublink" href="<%= WebFolder %>studentadmin/admission/student_data.aspx">viewing all records</a>.
                                            Essentially it offers the same feature like student search page except it doesn't filter student's 
                                            information by keyword. </li>
                                        
                                    </ol>
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
