<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_sponsors.aspx.cs" Inherits="search_search_sponsors" %>

<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_miscellaneous_level_1" Src="~/controls/nav_miscellaneous_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_search.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Report Generator</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css runat=server />

	</HEAD>
	<body>
	    <form id=form1 runat=server>
		<table class="expand" cellspacing="0" cellpadding="0">
			<tr>
				<td height="132">
					<USTTI:header_level_0 ID="header" runat=server />
				</td>
			</tr>
			<tr>
				<td class="header_border_top" >
					<table class="expand"  cellspacing="0" cellpadding="0">
                        <tr>
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" >
                                <USTTI:nav_miscellaneous_level_1 ID="nav_miscellaneous_level1" runat=server /></td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							<USTTI:menu ID="menu" runat="server" />
							    <div class="page_title">
                                   Query Results: <asp:Label ID="lblReturnNumber" runat="server" Text="0"></asp:Label> records returned.
                                </div>
                                <div class="page_sub_title">     
                                    List of Query Constraints (Click the link to remove the constraint)<br>
                                    <table border="0">
                                    <tr>
                                        <td>
                                            <asp:PlaceHolder id="ConstraintList" runat="server"></asp:PlaceHolder>
                                        </td>
                                    </tr>
                                    </table>                               
                                </div>
                                <div class="page_content">
                                <!-- Start Page Content -->                                                             
                                
                                <asp:DataGrid id="QueueGrid" runat="server" AlternatingItemStyle-BackColor="#EFEFEF" 
                                     HorizontalAlign="Center" AllowPaging="True" PageSize="25" AutoGenerateColumns="false" OnPageIndexChanged="QueueGrid_Paging" 
                                     AllowSorting="True" OnSortCommand="SortDataGrid" BorderColor=DarkGray BorderStyle=Double  Font-Size=11px Font-Names="trebuchet ms">                                    
                                    <HeaderStyle BackColor=#CAD3DC Font-Bold=True Font-Size=12px Font-Names="trebuchet ms" /> 
                                    <PagerStyle PageButtonCount="10" Position="Bottom" Mode="NumericPages" BackColor="#ffffff"></PagerStyle>					                
					                <Columns>
					                
					                    <asp:TemplateColumn HeaderText="Edit">
				                        <ItemTemplate>
					                        <a href='../course/sponsor/sponsor_edit_record.aspx?SponsorID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "SponsorID" ).ToString() )%>'>Edit</a>
				                        </ItemTemplate>
			                            </asp:TemplateColumn>
			                            
			                            <asp:TemplateColumn HeaderText="View">
				                        <ItemTemplate>
					                        <a href='../report/course/Sponsor/CourseBySponsor.aspx?SponsorID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "SponsorID" ).ToString() )%>&Year=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "Year" ).ToString() )%>'>View Report</a>
				                        </ItemTemplate>
			                            </asp:TemplateColumn>		
					                
					                    <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Course Number" SortExpression="Course Num" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbCourseNum" OnCommand="CourseNum_Click" runat="server" CommandName="CourseNumCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Course Num") %>' />						                            						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Course Name" SortExpression="Course" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbTitle" OnCommand="Title_Click" runat="server" CommandName="TitleCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Course") %>' />						                            						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Sponsor" SortExpression="Sponsor" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbSponsor" OnCommand="Sponsor_Click" runat="server" CommandName="SponsorCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Sponsor") %>' />						                            						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Year" SortExpression="Year" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbYear" OnCommand="Year_Click" runat="server" CommandName="YearCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Year") %>' />						                            						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>						               						                
						                						                
						                <asp:BoundColumn DataField="Abbr." HeaderText="Sponsor Abbr." HeaderStyle-Font-Bold="True" SortExpression="Abbr." />					                						                
						                						                						              						                					                    						                							            
					                </Columns>
				                </asp:DataGrid>
                                
                                <!-- End Page Content -->                        
                                </div>  
                            </td>
						</tr>						
                        <tr>
                            <td valign="bottom" height="75px">
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

