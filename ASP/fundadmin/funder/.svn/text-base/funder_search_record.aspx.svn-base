<%@ Page Language="C#" AutoEventWireup="true" CodeFile="funder_search_record.aspx.cs" Inherits="funder_search_record" %>
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
                            <td align="center" class="top_bar_left"  width="176" >&nbsp;
                                </td>
                            <td class="top_bar_right" >
                               &nbsp;</td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							<USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
                            <div class="page_title">                                
                            Search Funder Information</div>
                            <div class="search_record"><TABLE class="entry_form_detail" width="90%"><TBODY><TR><TD style="WIDTH: 100px">
    Funder Name</TD><TD colSpan=2><asp:TextBox id="txtFunderName" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" MaxLength="60" Width="200px"></asp:TextBox></TD></TR><TR><TD colSpan=3><asp:Button id="btnSearch" onclick="btnSearch_Click" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Text="Search"></asp:Button></TD></TR><TR><TD style="HEIGHT: 18px" colSpan=3><asp:Label id="lblMsgResult" runat="server" Text="Label" Font-Bold="True" Visible="False"></asp:Label></TD></TR></TBODY></TABLE></div>
                                    <div class="gridview">
                                        <asp:Label ID="lblMessError" Visible=false Font-Bold=true runat="server" Text="Label"></asp:Label>
                                    <asp:GridView ID="dgFunder" runat="server" AllowPaging="True"
                                        AllowSorting="True" AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double"
                                        CellPadding="5" DataKeyNames="funderid" OnRowDeleted="DeleteRow" DataSourceID="FunderDataSource" Font-Names="trebuchet ms"
                                        Font-Size="11px">
                                        <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                        <AlternatingRowStyle BackColor="#EFEFEF" />
                                        <Columns>
                                            <asp:HyperLinkField DataNavigateUrlFields="funderid" DataNavigateUrlFormatString="funder_edit_record.aspx?funderid={0}"
                                                NavigateUrl="~/fundadmin/funder/funder_edit_record.aspx" Text="Edit" />
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:HyperLinkField Text="Students" DataNavigateUrlFields="funderid,fundername" DataNavigateUrlFormatString="funder_student_view.aspx?funderid={0}&amp;fundername={1}" NavigateUrl="~/fundadmin/funder/funder_student_view.aspx" />
                                            <asp:BoundField DataField="fundertypdes" HeaderText="Description"/>
                                            <asp:BoundField DataField="fundername" HeaderText="Funder Name" />
                                        </Columns>
                                        <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                        <PagerSettings Mode="NumericFirstLast" />
                                    </asp:GridView></div>
                                <asp:SqlDataSource ID="FunderDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    DeleteCommand="DELETE funders WHERE funderid=@funderid" ></asp:SqlDataSource>
                              
                            </td>
						</tr>
                        <tr>
                            <td valign="bottom">
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
