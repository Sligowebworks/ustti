<%@ Page Language="C#" AutoEventWireup="true" CodeFile="funding_add_record.aspx.cs" Inherits="funding_add_record" %>
<%@ Register TagPrefix="USTTI" TagName="header_level_0"  src="~/controls/header_level_0.ascx"%>
<%@ Register TagPrefix="USTTI" TagName="nav_level_0" Src="~/controls/nav_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="footer_level_0" Src="~/controls/footer_level_0.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="nav_studentfund_level_1" Src="~/controls/nav_funding_level_1.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="date_selector" Src="~/controls/date_selector.ascx" %>
<%@ Register TagPrefix="USTTI" TagName="css" Src="~/controls/css.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD id="HEAD1" runat=server>
		<title>USTTI Student Funding Information</title>
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
                                <div class="page_title">
                                    Student's Funding Information</div>
                                <p></p>
                                <div>
                                <TABLE id="student_data_entry_form" class="data_entry_form" cellpadding="5">
                                <TBODY><TR><TD class="entry_form_header" vAlign=top colSpan=3>
                                    Student's Funding Information</TD></TR>
                                    <tr>
                                        <td colspan="3" valign="middle">
                                       <TABLE id="tblEntryForm1" class="entry_form_detail" width="90%" runat="server"><TBODY><TR><TD style="WIDTH: 100px; HEIGHT: 27px">Student Name</TD><TD style="HEIGHT: 27px" 
colSpan=2>
                                           <asp:TextBox ID="txtStudentName" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                               ReadOnly="True"></asp:TextBox>
                                           <asp:TextBox ID="txtSID" runat="server" Visible="False"></asp:TextBox></TD></TR>
                                           <tr>
                                               <td style="width: 100px; height: 27px">
                                                   Country</td>
                                               <td colspan="2" style="height: 27px">
                                                   <asp:TextBox ID="txtCountry" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                       ReadOnly="True"></asp:TextBox></td>
                                           </tr>
                                           <tr>
                                               <td style="width: 100px; height: 27px">
                                                   Application Date</td>
                                               <td colspan="2" style="height: 27px">
                                                   <asp:TextBox ID="txtAppDate" runat="server" Font-Names="Trebuchet MS" Font-Size="11px" ReadOnly="True" Width="58px"></asp:TextBox>
                                                   <asp:TextBox ID="txtAID" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
        ReadOnly="True" Width="60px" Visible="False"></asp:TextBox></td>
                                           </tr>
                                       </TBODY></TABLE> 
                                                            <TABLE id="tblFunderListDetail" class="sub_page_entry_form" cellPadding=4 runat="server"><TBODY><TR><TD class="entry_form_header" colSpan=3>
                                                                Funder List Detail</TD></TR><TR><TD colSpan=3><TABLE id="tblSubPageEntryDetail" 
class="subpage_form_detail" width="90%" 
runat="server"><TBODY><TR>
                                                    <td style="width: 100px">
                                                        Funder</td>
                                                    <td colspan="2">
                                                        <asp:DropDownList ID="FunderList" runat="server"  Font-Names="Trebuchet MS"
                                                            Font-Size="11px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FunderList"
                                                            Display="Dynamic" ErrorMessage="required" InitialValue="-Select Funder-"></asp:RequiredFieldValidator></td>
                                                </TR><TR>
                                                    <td style="width: 100px">
                                                        Fund Type</td>
                                                    <td colspan="2">
                                                        <asp:DropDownList ID="FundTypeList" runat="server" Font-Names="Trebuchet MS"
                                                            Font-Size="11px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FundTypeList"
                                                            Display="Dynamic" ErrorMessage="required" InitialValue="-Select Fund Type-"></asp:RequiredFieldValidator></td>
                                                </TR><TR><TD style="WIDTH: 75px; HEIGHT: 25px" valign="top">
                                                        Begin Date</TD><TD style="HEIGHT: 27px" colSpan=2>
                                                        <USTTI:date_selector ID="start_date" runat=server />

                                                    </TD></TR><TR><TD style="WIDTH: 75px; HEIGHT: 25px" valign="top">
                                                        End Date</TD><TD style="HEIGHT: 27px" colSpan=2>
                                                        <USTTI:date_selector ID="end_date" runat=server />
                                                    </TD></TR><TR><TD style="WIDTH: 75px; HEIGHT: 25px" valign="top">
                                                        Description</TD><TD style="HEIGHT: 27px" 
colSpan=2>
                                                        <asp:TextBox ID="txtDesc" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            Height="75px" TextMode="MultiLine" Width="200px"></asp:TextBox></TD></TR><TR><TD style="WIDTH: 75px; HEIGHT: 25px">
                                                        Amount</TD><TD style="HEIGHT: 27px" 
colSpan=2>
                                                        <asp:TextBox ID="txtAmount" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtAmount"
                                                            Display="Dynamic" ErrorMessage="Please enter currency format (ex: xxxx.xx)" Operator="DataTypeCheck"
                                                            Type="Double" SetFocusOnError="True"></asp:CompareValidator>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmount"
                                                                Display="Dynamic" ErrorMessage="required" SetFocusOnError="True"></asp:RequiredFieldValidator></TD></TR>
    <TR><TD style="HEIGHT: 25px" colSpan=3>
                                                            &nbsp;<asp:Button ID="btnAddFunder" runat="server" Font-Names="Trebuchet MS" Font-Size="11px"
                                                            Text="Add Funder To List" OnClick="btnAddFunder_Click" /></TD></TR></TBODY></TABLE>
                                                            </TD></TR><TR><TD colSpan=3>
                                            
                                            <asp:Label ID="lblDupMessage" runat="server" Font-Bold="True" Text="The Funder You Entered Already in The List"
                                                Visible="False"></asp:Label>
                                                                <asp:Label ID="lblNullMessage2" runat="server" Font-Bold="True" Font-Names="Trebuchet MS"
                                                                    Font-Size="11px" Text="This Student Does Not Have Any Funder" Visible="False"></asp:Label>
                                                                
                                            <asp:GridView ID="dgFunding" runat="server" AllowPaging="True"
                                                AutoGenerateColumns="False" BorderColor="DarkGray" BorderStyle="Double" CellPadding="5"
                                                DataKeyNames="fundid" ShowFooter=True DataSourceID="FundingDataSource" Font-Names="trebuchet ms"
                                                Font-Size="11px"  >
                                                <AlternatingRowStyle BackColor="#EFEFEF" />
                                                <HeaderStyle BackColor="#CAD3DC" Font-Bold="True" Font-Names="trebuchet ms" Font-Size="12px" />
                                                <PagerStyle BackColor="#CAD3DC" Font-Names="trebuchet ms" Font-Size="11px" />
                                                <PagerSettings Mode="NumericFirstLast" />
                                                <FooterStyle Font-Bold="True" Font-Names="trebuchet ms" BorderColor=White /> 
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" />
                                                    <asp:BoundField DataField="fundid" HeaderText="Fund ID" />
                                                    <asp:BoundField DataField="fundtypdes" HeaderText="Fund Type" />
                                                    <asp:BoundField DataField="fundername" HeaderText="Funder Name" >
                                                        <ItemStyle Wrap="False" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="fundertypdes" HeaderText="Funder Desc" />
                                                    <asp:BoundField DataField="begindate" HeaderText="Begin Date" HtmlEncode=False DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="enddate" HeaderText="End Date" HtmlEncode=False DataFormatString="{0:d}" />
                                                    <asp:BoundField DataField="description" HeaderText="Desc"  />
                                                    <asp:TemplateField HeaderText="Amount">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server"  Text='<%# decimal.Parse(Eval("amount").ToString()).ToString("C") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                         <%# GetTotal().ToString("C") %>
                                                    </FooterTemplate>
                                                    </asp:TemplateField>

                                                    
                                                </Columns>
                                                
                                            </asp:GridView>
</TD></TR><TR><TD colSpan=3><asp:Button id="btnAddCourse2" onclick="btnAddCourse2_Click" runat="server" Font-Size="11px" Font-Names="Trebuchet MS" Text="Add Funder"></asp:Button> </TD></TR></TBODY></TABLE> &nbsp; &nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <TR><TD style="HEIGHT: 29px" colSpan=3></TD></TR></TBODY></TABLE>
                                </div>
                                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:SqlDataSource ID="StudentDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>" SelectCommand="SELECT [studentid], [firstname], [lastname], [dob] FROM [student]">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="FunderDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [funders]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="FundTypeDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                    SelectCommand="SELECT * FROM [fundtype]"></asp:SqlDataSource>
                                <asp:SqlDataSource OnDeleting="DeleteRow" ID="FundingDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>"
                                DeleteCommand="DELETE FROM funding WHERE fundid=@fundid" >
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="ApplicationDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:usttiConnectionString %>">
                                </asp:SqlDataSource>
                            </td>
						</tr>
                        <tr>
                            <td height="75" valign="bottom">
                            <USTTI:footer_level_0 ID="footer_level_0" runat=server /> 
                            </td>
                        </tr>
						
					</table>	
					</table>
	</form>	
	</body>
	
</HTML>
