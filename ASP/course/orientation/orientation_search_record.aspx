<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orientation_search_record.aspx.cs" Inherits="orientation_search_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_orientation_level_1" Src="~/controls/nav_orientation_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_orientation.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Orientation Information</title>
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
                        <tr height="20px">
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;</td>
                            <td class="top_bar_right" >
                                &nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3">
							    <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top style="height: 294px">
							<USTTI:menu ID="menu" runat="server" />                                
                                   <div class="page_title">
                                       Search
                                    Orientation Record</div>
                                    <div class="search_record">
                                    <div class="search_record_segment">
                                       Orientation Start Date (mm-dd-yyyy):
                                        <asp:TextBox ID="txtOrientStartDate" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="txtOrientStartDate" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter proper date format (mm-dd-yyyy ex:05-02-2005)"
                                            Font-Names="Trebuchet MS" Font-Size="11px" ControlToValidate="txtOrientStartDate" Display="Dynamic" SetFocusOnError="True" ValidationExpression="((0?[13578]|10|12)(-|\/)((0[0-9])|([12])([0-9]?)|(3[01]?))(-|\/)((\d{4})|(\d{2}))|(0?[2469]|11)(-|\/)((0[0-9])|([12])([0-9]?)|(3[0]?))(-|\/)((\d{4}|\d{2})))"></asp:RegularExpressionValidator></div>   
                                        <div class="search_record_segment">
                                        <asp:Button ID="cmdSearch" runat="server" Text="Search" Font-Names="Trebuchet MS" Font-Size="11px" OnClick="cmdSearch_Click" />
                                        </div>
                                        <div class="search_record_segment">
                                            <asp:Label ID="lblSearchResult"  Visible=false runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                <div class="gridview">
                                <asp:Label ID="lblMessError" Visible=false Font-Bold=true runat="server" Text="Label"></asp:Label>
                                    <asp:GridView ID="dgOrientation" Visible=False runat="server" AllowPaging="True" AllowSorting="True"
                                        AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                        DataSourceID="OrientationDataSource" DataKeyNames="orientid"  Font-Names="trebuchet ms" Font-Size="11px"
                                        OnRowDeleted="DeleteRow" >
                                        <PagerSettings Mode="NumericFirstLast" />
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                        <Columns>
                                            <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="orientid" DataNavigateUrlFormatString="orientation_edit_record.aspx?orientid={0}" NavigateUrl="~/course/orientation/orientation_edit_record.aspx" />
                                            <asp:CommandField ShowDeleteButton="True" />
                                        <asp:BoundField HeaderText="Year" DataField="orientation_year" />
                                        <asp:BoundField HeaderText="From " DataField="date_from" HtmlEncode=False DataFormatString="{0:d}" />
                                        <asp:BoundField HeaderText="To" DataField="date_to"  HtmlEncode=False DataFormatString="{0:d}" />
                                        <asp:BoundField HeaderText="Range" DataField="daterange" />
                                          </Columns>
                                    </asp:GridView>
                                    
                                    <asp:SqlDataSource ID="OrientationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                        SelectCommand="SELECT * FROM [orientation]"
                                         DeleteCommand="DELETE FROM orientation WHERE orientid=@orientid"></asp:SqlDataSource>
                               
                                    </div>
                                
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
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