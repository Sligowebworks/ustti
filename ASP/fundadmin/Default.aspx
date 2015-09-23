<%@ Page Language="c#" AutoEventWireup="false" CodeFile="default.aspx.cs" Inherits="funding_admin_default" CodeBehind="Default.aspx.cs" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_funder_level_1" Src="~/controls/nav_funder_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Funder Information</title>
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
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding=0>
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;</td>
                            <td class="top_bar_right">&nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
                            <div class="page_title">Funder</div>
                            <div class="page_content">
                            <h1>Funder Information</h1>
                                Funder section enables user to administer new funder, update existing funder information.
                                It also provides user with search and browse facility to track the funder. Another view offered
                                is the list of students having been sponsorized by particular funder.In order to use funder section
                                properly you have to satisfy the prerequisites below :<br />
                                <br />
                                <a class="sublink2" href="<%= WebFolder %>fundadmin/fundertype/fundertype_add_record.aspx">Setting Funder Type Table</a><br />
                                This section allows you to fill information about funder type. You have to make sure that the type 
                                of funder is exist in this section before you go to Add Funder page .<br />
                                <h1>Administering New Funder</h1>
                                The procedure of administering new funder is :
                                <ol>
                                   <li>Administer New Funder<br />
                                       To administer new funder have to click 
                                       <a class="sublink" href="<%= WebFolder %>fundadmin/funder/funder_add_record.aspx">
                                       Add Funder</a> link on the menu on the left bar. It will bring you to a session enabling you to enter
                                       funder information.</li>
                                </ol>
                                    <h1>Update Funder's Information</h1>
                                    You can update or view funder existing information by following the procedures below:
                                    <ol>
                                        <li>Search Funder's Information by Keyword<br />
                                            You can open <a class="sublink" href="<%= WebFolder %>fundadmin/funder/funder_search_record.aspx">funder search page</a>
                                            then you can perform search by funder name. When the search result appears it gives you funder's
                                            name & description. It also gives you student's link which will show all students that have been sponsorized by this funder.
                                        </li>
                                        <li>Browse Funder's Records<br />
                                            This page offers another method to search funder's records by <a class="sublink" href="<%= WebFolder %>course/sponsor/sponsor_data.aspx">
                                            viewing all records</a>. Essentially it offers the same feature like funder search page except it doesn't filter funder's information by keyword </li>
                                        
                                    </ol>               
                            </div>
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom" height="75px" >
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
