<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="course_admin_default" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_course_level_1" Src="~/controls/nav_courseadmin_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Sponsor Information</title>
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
                            <div class="page_title">Sponsor</div>
                            <div class="page_content">
                            <h1>Sponsor Information</h1>
                                Sponsor section allows you to access information about USTTI course's sponsor.
                                The features offered are user can administer new sponsor, update sponsor existing 
                                information, view courses that have been sponsored by particular sponsor. Search and 
                                browse facility to identify specific sponsor.<br />
                            The procedure of administering new sponsor is :
                            <ol>
                                <li>Administer New Sponsor<br />
                                    To administer new funder have to click 
                                    <a class="sublink" href="<%= WebFolder %>course/sponsor/sponsor_add_record.aspx">
                                    Add Sponsor</a> link on the menu on the left bar. It will bring you to a session enabling you to enter
                                    sponsor information.
                                 </li>
                                        
                            </ol>
                            <h1>Update Sponsor's Information</h1>
                            You can update or view sponsor existing information by following the procedures below:
                            <ol>
                               <li>Search Sponsor's Information by Keyword<br />
                                   You can open <a class="sublink" href="<%= WebFolder %>course/sponsor/sponsor_search_record.aspx">sponsor search page</a>
                                   then you can perform search by sponsor name. When the search result appears it gives you sponsor's
                                   information. It also gives you course link which will show all courses that have been sponsorized by this sponsor.
                               </li>
                               <li>Browse Sponsor's Records<br />
                                   This page offers another method to search sponsor's records by <a class="sublink" href="<%= WebFolder %>course/sponsor/sponsor_data.aspx">
                                   viewing all records</a>. Essentially it offers the same feature
                                   like sponsor search page except it doesn't filter sponsor's information by keyword </li>
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
