<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Demand>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Demand
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Demand</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2>All Demands</h2>

    <ul>
        <% foreach (var demand in Model)
           { %>
        
            <li>                 
                <%: Html.ActionLink(demand.No + "", "DemandDetails", 
                                    new { id=demand.No }) %>    
                on 
                <%: demand.Date.ToShortDateString()%>
            </li>
        
        <% } %>
    </ul>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
