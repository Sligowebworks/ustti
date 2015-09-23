<table cellspacing=0 cellpadding=0 class="top_nav_bar">
 <tr>
    <td  align="left">
    <asp:Menu ID="Menu1" runat="server" BackColor="ButtonFace" DynamicHorizontalOffset="2"
                                    Font-Names="Trebuchet MS" Font-Size="11px" ForeColor=Black Orientation="Horizontal"
                                    StaticSubMenuIndent="10px"  >
                                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                    <DynamicMenuStyle BackColor="#F7F6F3" />
                                    <StaticSelectedStyle BackColor="#5D7B9D" />
                                    <DynamicSelectedStyle BackColor="#5D7B9D" />
                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                    <Items>
                                        <asp:MenuItem NavigateUrl="~/studentadmin/admission/student_data.aspx" Text="View Student" Value="View Student"></asp:MenuItem>
                                        <asp:MenuItem  NavigateUrl="~/fundadmin/funder/funder_data.aspx" Text="View Funder" Value="View Funder"></asp:MenuItem>
                                        <asp:MenuItem  NavigateUrl="~/studentadmin/application/application_data.aspx" Text="View Application" Value="View Application"></asp:MenuItem>
                                    </Items>
                                    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                                </asp:Menu>
     </td>
 </tr>
</table>