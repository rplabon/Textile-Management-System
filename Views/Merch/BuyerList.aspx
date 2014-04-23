<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Buyer>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BuyerList
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>BuyerList</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">All Orders</h2>

    <ul class="name">
        <% foreach (var buyer in Model)
           { %>
        
            <li>
                ID: <%: Html.ActionLink(buyer.ID + "", "BuyerDetails", new { id = buyer.ID})%>                
                of Company Name: 
                <%: buyer.ComName %>.
            </li>
        
        <% } %>
    </ul>

    <%--<%: Html.ActionLink("Go Back to your Account", "~/Log/Merch", new { id = (Int32)Session["MerID"] })%>--%>

    <br />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
