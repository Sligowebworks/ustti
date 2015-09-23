<%@ Control Language="C#" ClassName="date_selector" %>

<script runat="server">
public void GenerateDateList()
{
        //initialization
        int intTodayDate = Convert.ToInt32(DateTime.Now.Day);
        int intTodayMonth = Convert.ToInt32(DateTime.Now.Month);
        int intTodayYear = Convert.ToInt32(DateTime.Now.Year);
        int intDaysInMonth = Convert.ToInt32(DateTime.DaysInMonth(intTodayYear, intTodayMonth));
        //generate month list
        MonthList.Items.Add("-Select Month-");
        for (int z = 1; z <= 12; z++)
        {
            MonthList.Items.Add(Convert.ToString(z));
        }
        //generate day list
        DayList.Items.Add("-Select Day-");
        for (int j = 1; j <= intDaysInMonth; j++)
        {
            DayList.Items.Add(Convert.ToString(j));
        }
        //generate Year List
        YearList.Items.Add("-Select Year-");
        for (int i = 1930; i <= intTodayYear; i++)
        {
            YearList.Items.Add(Convert.ToString(i));
        }

}
public void GenerateDateList(int intStartYear,int intEndYear)
{
        //initialization
        int intTodayDate = Convert.ToInt32(DateTime.Now.Day);
        int intTodayMonth = Convert.ToInt32(DateTime.Now.Month);
        int intTodayYear = Convert.ToInt32(DateTime.Now.Year);
        int intDaysInMonth = Convert.ToInt32(DateTime.DaysInMonth(intTodayYear, intTodayMonth));
        //generate month list
        MonthList.Items.Add("-Select Month-");
        for (int z = 1; z <= 12; z++)
        {
            MonthList.Items.Add(Convert.ToString(z));
        }
        //generate day list
        DayList.Items.Add("-Select Day-");
        for (int j = 1; j <= intDaysInMonth; j++)
        {
            DayList.Items.Add(Convert.ToString(j));
        }
        //generate Year List
        YearList.Items.Add("-Select Year-");
        for (int i = intStartYear; i <= intEndYear; i++)
        {
            YearList.Items.Add(Convert.ToString(i));
        }

}
public void fillControl(string date_param)
{
            DateTime DOB = Convert.ToDateTime(date_param);
            MonthList.Text = Convert.ToString(DOB.Month).Trim();
            DayList.Text = Convert.ToString(DOB.Day).Trim();
            YearList.Text = Convert.ToString(DOB.Year).Trim();
}
public string GetDate()
{
     string strMonth =MonthList.SelectedItem.Text;
     string strDay = DayList.SelectedItem.Text;
     string strYear =YearList.SelectedItem.Text;
     string strDate = strMonth + "/" + strDay + "/" + strYear;
     return strDate;
}
public void setValidatorOff()
{
    CompareValidator1.Enabled=false;
    CompareValidator2.Enabled=false;
    CompareValidator3.Enabled=false;
}
public void setValidatorOn()
{
    CompareValidator1.Enabled=true;
    CompareValidator2.Enabled=true;
    CompareValidator3.Enabled=true;
}

</script>

<table class="date_entry" width=300 cellpadding=0 cellspacing=0 border=0>
    <tr>
        
        <td align="left"style="width: 70px" valign="top">
            <asp:DropDownList ID="MonthList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
            </asp:DropDownList></td>
        <td align="left" style="width: 70px" valign="top">
            <asp:DropDownList ID="DayList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
            </asp:DropDownList></td>
        <td align="left" style="width: 70px" valign="top">
            <asp:DropDownList ID="YearList" runat="server" Font-Names="Trebuchet MS" Font-Size="11px">
            </asp:DropDownList></td>
    </tr>
</table>
<asp:CompareValidator ID="CompareValidator1"  SetFocusOnError=true ControlToValidate="MonthList"  Operator=DataTypeCheck Type=Integer Display=dynamic runat="server">Month Required<br /></asp:CompareValidator>
<asp:CompareValidator ID="CompareValidator2"  SetFocusOnError=true ControlToValidate="DayList"  Operator=DataTypeCheck Type=Integer Display=dynamic runat="server">Day Required<br /></asp:CompareValidator>
<asp:CompareValidator ID="CompareValidator3"  SetFocusOnError=true ControlToValidate="YearList" Operator=DataTypeCheck Type=Integer Display=dynamic runat="server">Year Required<br /></asp:CompareValidator>
