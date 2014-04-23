<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Demand>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DemandDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>DemandDetails</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">Demand No: &nbsp;&nbsp;&nbsp;<%: Model.No %></h2>
    <div class="details">
    <p>
        <strong>When:</strong> 
        <%: Model.Date.ToShortDateString() %>
    </p>
    <p>
        <strong>Thickness:</strong>
        <%: Model.Thickness %>,
        <strong>Color:</strong>
        <%: Model.Color %>,
        <strong>Quantity:</strong>
        <%: Model.Quantity %>,
        <strong>Size:</strong>
        <%: Model.Size %>,
        <strong>Order No:</strong>
        <%: Model.OrderNo %>,
        <strong>Created By:</strong>
        <%: Model.MerchID %>
    </p>
    </div>
    
    <%: Html.ActionLink("Edit Demand", "EditDemand", new { id=Model.No })%>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
