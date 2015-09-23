<%@ Page Language="C#" AutoEventWireup="true" CodeFile="country_edit_record.aspx.cs" Inherits="country_edit_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_country_level_1" Src="~/controls/nav_country_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="menu" Src="~/controls/menu_countries.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Country Information</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<USTTI:css ID=css1 runat=server />

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
                            <td class="top_bar_right">
                               </td>
                        </tr>
						<tr>
							<td class="nav_right"  rowspan="3" >
							   <USTTI:nav_level_0 ID="nav_level_0" runat=server />
							</td>
							<td class="content_text" valign=top>
							    <USTTI:menu ID="menu" runat="server" />
                                <div class="page_title">
                                    Country Data</div>
                                <p></p><TABLE class="data_entry_form" cellPadding=4><TBODY><TR><TD class="entry_form_header" vAlign=top 
colSpan=3>
                                    Country Information</TD></TR><TR><TD vAlign=middle colSpan=3>
                                <TABLE id="tblEntryForm" class="entry_form_detail" width="90%" runat="server"><TBODY><TR><TD 
style="WIDTH: 100px; HEIGHT: 27px">
                                    Country Name <span style="color: #ff0033">*</span></TD><TD style="HEIGHT: 27px" 
colSpan=2><asp:TextBox id="txtCountryName" runat="server" Width="150px" Font-Size="11px" Font-Names="Trebuchet MS"></asp:TextBox> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCountryName"
                                            ErrorMessage="Required"></asp:RequiredFieldValidator></TD></TR><TR><TD style="WIDTH: 100px; HEIGHT: 46px" 
vAlign=middle>
    Printable Name</TD><TD  colSpan=2>
        <asp:TextBox ID="txtPrintName" runat="server" Font-Names="Trebuchet MS"
            Font-Size="11px" Width="150px"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top>
    Abbreviation</TD><TD colSpan=2>
        <asp:TextBox ID="txtAbbr" runat="server" Font-Names="Trebuchet MS"
            Font-Size="11px" Width="41px"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px; height: 26px;" vAlign=middle>
                                                            Mail Code</TD><TD colSpan=2 style="height: 26px">
                                                                <asp:TextBox ID="txtMailCode" runat="server" Font-Names="Trebuchet MS"
                                                                    Font-Size="11px" Width="150px"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 100px" vAlign=middle>
                                                            Independent</TD><TD vAlign=top 
align=left colSpan=2><asp:RadioButtonList id="IndependentRadioButton" runat="server" Width="102px" Font-Size="11px" Font-Names="Trebuchet MS" RepeatDirection="Horizontal">
    <asp:ListItem Value="Yes">Yes</asp:ListItem>
    <asp:ListItem Value="No">No</asp:ListItem>
</asp:RadioButtonList></TD></TR><TR><TD style="WIDTH: 100px" vAlign=top>
                                                            Training Eligibility</TD><TD vAlign=top align=left 
colSpan=2><asp:RadioButtonList id="TrainingRadioButtonList" runat="server" Width="102px" Font-Size="11px" Font-Names="Trebuchet MS" RepeatDirection="Horizontal">
    <asp:ListItem Value="Yes">Yes</asp:ListItem>
    <asp:ListItem Value="No">No</asp:ListItem>
</asp:RadioButtonList></TD></TR><TR><TD style="WIDTH: 100px" vAlign=middle>
                                                            Aid Eligiblity</TD><TD vAlign=top align=left 
colSpan=2><asp:RadioButtonList id="AidButtonList" runat="server" Width="102px" Font-Size="11px" Font-Names="Trebuchet MS" RepeatDirection="Horizontal">
    <asp:ListItem Value="Yes">Yes</asp:ListItem>
    <asp:ListItem Value="No">No</asp:ListItem>
</asp:RadioButtonList></TD></TR><TR><TD style="WIDTH: 100px; HEIGHT: 22px" 
vAlign=top>
                                                            Region <span style="color: #ff0033">*</span></TD><TD 
style="HEIGHT: 22px" vAlign=top align=left colSpan=2><asp:DropDownList id="RegionList" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" DataSourceID="RegionlDataSource" DataTextField="regionname" DataValueField="regionid">
                                                        </asp:DropDownList></TD></TR></TBODY></TABLE>
                            </TD></TR><TR><TD vAlign=top><asp:Button id="btnSubmit" onclick="btnSubmit_Click" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Text="Save"></asp:Button></TD></TR></TBODY></TABLE>&nbsp;
                                <asp:SqlDataSource ID="RegionlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [region]"></asp:SqlDataSource>
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
