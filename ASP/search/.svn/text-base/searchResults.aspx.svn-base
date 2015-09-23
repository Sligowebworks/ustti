<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchResults.aspx.cs" Inherits="search_searchResults" %>
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
					<table border="0" class="expand"  cellspacing="0" cellpadding="0">
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
                                
                                <asp:DataGrid id="QueueGrid" DataKeyField="Applicant ID" runat="server" AlternatingItemStyle-BackColor="#EFEFEF" 
                                     HorizontalAlign="Center" AllowPaging="True" PageSize="25" AutoGenerateColumns="false" OnPageIndexChanged="QueueGrid_Paging" 
                                     AllowSorting="True" OnSortCommand="SortDataGrid" BorderColor=DarkGray BorderStyle=Double Font-Size=11px Font-Names="trebuchet ms">					                                                    
                                    <HeaderStyle BackColor=#CAD3DC Font-Bold=True Font-Size=12px Font-Names="trebuchet ms" />                                              
                                    <PagerStyle PageButtonCount="10" Position="Bottom" Mode="NumericPages" BackColor="#ffffff"></PagerStyle>
					                <Columns>		
					                
					                    <asp:TemplateColumn HeaderText="Edit">
				                        <ItemTemplate>
					                        <a href='../studentadmin/admission/student_edit_record.aspx?action=edit&StudentID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "APPLICANT ID" ).ToString() )%>'>Edit</a>
				                        </ItemTemplate>
			                            </asp:TemplateColumn>
			                            
			                            <asp:TemplateColumn HeaderText="View">
				                        <ItemTemplate>
					                        <a href='../report/biosheet/BioSheet.aspx?StudentID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "APPLICANT ID" ).ToString() )%>&ApplicationID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "Application ID" ).ToString() ) %>'>View <br/>BioSheet Report</a>
				                        </ItemTemplate>
			                            </asp:TemplateColumn>
			                            
			                            <asp:TemplateColumn HeaderText="View">
				                        <ItemTemplate>
					                        <a href='../report/biosheet/BioSheetDetail.aspx?StudentID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "APPLICANT ID" ).ToString() )%>&ApplicationID=<%# Server.UrlEncode( DataBinder.Eval(Container.DataItem, "Application ID" ).ToString() ) %>'>View <br/>Detail BioSheet Report</a>
				                        </ItemTemplate>
			                            </asp:TemplateColumn>
					                
					                    <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Country" SortExpression="country">
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbCountry" OnCommand="Country_Click" runat="server" CommandName="CountryCommand" Text='<%# DataBinder.Eval(Container.DataItem, "country") %>' />						                            						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>				                
					                
					                    <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Applicant ID" SortExpression="Applicant ID">
					                        <ItemTemplate>
					                            <asp:LinkButton ID="lbApplicantID" OnCommand="Applicant_Click" runat="server" CommandName="ApplicantCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Applicant ID") %>' />					                            
					                        </ItemTemplate>
					                    </asp:TemplateColumn>
					                    
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="First Name" SortExpression="First">
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbFirst" OnCommand="FirstName_Click" runat="server" CommandName="FirstCommand" text='<%# DataBinder.Eval(Container.DataItem, "first") %>' />
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Last Name" SortExpression="Last">
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbLast" OnCommand="LastName_Click" runat="server" CommandName="LastNameCommand" Text='<%# DataBinder.Eval(Container.DataItem, "last") %>' />
						                    </ItemTemplate>
						                </asp:TemplateColumn>						               						                				                						                
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Gender" SortExpression="Gender">
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbGender" OnCommand="Gender_Click" runat="server" CommandName="GenderCommand" Text='<%# DataBinder.Eval(Container.DataItem, "gender") %>' />
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:BoundColumn DataField="Accepted" HeaderText="Accepted" HeaderStyle-Font-Bold="True" SortExpression="Accepted" />						            						            						          						            
						                <asp:BoundColumn DataField="Confirmed" HeaderText="Confirmed" HeaderStyle-Font-Bold="True" SortExpression="Confirmed" />						           						            						            						            						            						            						                
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Participant" SortExpression="Participat">
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbParticipant" OnCommand="Participant_Click" runat="server" CommandName="ParticipantCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Participat") %>' />
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Course Number" SortExpression="Course Num">
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbCourseNum" OnCommand="CourseNum_Click" runat="server" CommandName="CourseNumCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Course Num") %>' />						                           						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Course Title" SortExpression="Title" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbTitle" OnCommand="Title_Click" runat="server" CommandName="TitleCommand" Text='<%# DataBinder.Eval(Container.DataItem, "Title") %>' />						                           						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>		
						                						                
                                        <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Course Start Date" SortExpression="Start Date" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbStartDate" OnCommand="StartDate_Click" runat="server" CommandName="StartDateCommand" Text='<%# ((DateTime)(DataBinder.Eval(Container.DataItem, "Start Date"))).ToString("MM/dd/yyyy") %>' />						                           						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>
						                
						                <asp:TemplateColumn HeaderStyle-Font-Bold="True" HeaderText="Orientation Start Date" SortExpression="Orientation Start" >
						                    <ItemTemplate>
						                        <asp:LinkButton ID="lbOrientationStart" OnCommand="OrientationStart_Click" runat="server" CommandName="OrientationStartCommand" Text='<%# ((DateTime)(DataBinder.Eval(Container.DataItem, "Orientation Start"))).ToString("MM/dd/yyyy") %>' />						                           						                        
						                    </ItemTemplate>
						                </asp:TemplateColumn>						                				                						             						                
						                							            
					                </Columns>
				                </asp:DataGrid>                                
				                
				                <asp:Label ID="SaveLabel" runat="server" Text=""></asp:Label>
                                
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
