<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu_search.ascx.cs" Inherits="controls_menu_search" %>
<div class="menu_student">
<a class="mainlink" href="<%= WebFolder %>search/searchResults.aspx">All</a>   |   
<a class="mainlink" href="<%= WebFolder %>search/search_courses.aspx">Courses</a>   |  
<a class="mainlink" href="<%= WebFolder %>search/search_country.aspx">Countries</a> |
<a class="mainlink" href="<%= WebFolder %>search/search_application_status.aspx">Application Status</a>   |   
<a class="mainlink" href="<%= WebFolder %>search/search_student_info.aspx">Student Info</a>   |   
<a class="mainlink" href="<%= WebFolder %>search/search_extended_student_info.aspx">Extended Student Info</a>   |   
<a class="mainlink" href="<%= WebFolder %>search/search_funders.aspx">Funders Info</a>   |   
<a class="mainlink" href="<%= WebFolder %>search/search_sponsors.aspx">Sponsors Info</a> 
<% if ( ShowMultiBioSheetReport()  ) { %>
| <a class="mainLink" href="<%= WebFolder %><%= MultiSheetPage() %>">Multi Bio Sheet Report</a>
<% } %>
<% if (ShowPrintLabelsReport()) { %>
<a class="mainlink" href="<%= WebFolder %>search/createlabels.aspx" target="_blank">|  Create Labels</a>
<% } %>
</div>
