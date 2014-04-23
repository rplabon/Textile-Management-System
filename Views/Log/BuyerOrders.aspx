<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Order>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BuyerOrders
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>BuyerOrders</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">All Orders</h2>

    <ul class="name">
        <% foreach (var order in Model)
           { %>
        
            <li>
                <%: Html.ActionLink(order.No + "", "OrderDetails", new { No = order.No})%>    
                on 
                <%: order.Date.ToShortDateString()%> 
            </li>
        
        <% } %>
    </ul>

    <br />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
