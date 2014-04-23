<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Meeting>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Meeting
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Meeting</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">Upcoming Meetings: <br /></h2>
    <ul>
        <% foreach (var meeting in Model)
           { %>
        
            <li>                 
                <%: Html.ActionLink(meeting.Date + "", "MeetingDetails", 
                                    new { id=meeting.OrderNo }) %>
                on 
                <%: meeting.OrderNo%>
            </li>
        
        <% } %>
    </ul>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
