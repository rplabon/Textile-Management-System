<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Order>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	OrderDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>OrderDetails</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">Order No: &nbsp;&nbsp;&nbsp;<%: Model.No %></h2>
    <div class="details">
    <p>
        <strong>When:</strong> 
        <%: Model.Date.ToShortDateString() %>
    </p>
    <p>
        <strong>Color:</strong>
        <%: Model.Color %>,
        <strong>Size:</strong>
        <%: Model.Size %>,
        <strong>Amount:</strong>
        <%: Model.Amount %>,
        <strong>Diameter:</strong>
        <%: Model.Dia %>,
        <strong>Shade:</strong>
        <%: Model.Shade %>,
        <strong>Buyer ID:</strong>
        <%: Model.BuyerID %>
    </p>
    </div>
    
    <%--<%: Html.ActionLink("Go Back to Order List", "Order", "Merch")%>--%>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
