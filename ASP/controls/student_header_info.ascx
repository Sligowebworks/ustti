<%@ Control Language="C#" ClassName="student_header_info" %>

<script runat="server">
public void SetObjectValue(string firstname,string lastname,string dob,string country)
{
    Label1.Text=firstname;
    Label2.Text=lastname;
    Label3.Text=dob;
    Label4.Text=country;
}
</script>
<TABLE class="entry_form_detail" width="90%">
<TR><TD style="WIDTH: 100px">First Name</TD><TD colSpan=2>:&nbsp;&nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></TD>
</TR><TR><TD style="WIDTH: 100px">Last Name</TD><TD colSpan=2>:&nbsp;&nbsp<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></TD>
</TR><TR><TD style="WIDTH: 100px">Date of Birth</TD><TD colSpan=2>:&nbsp;&nbsp<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></TD>
</TR><TR><TD style="WIDTH: 100px">Country</TD><TD colSpan=2>:&nbsp;&nbsp<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></TD></TR>
</TABLE>