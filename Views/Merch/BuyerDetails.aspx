<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Buyer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BuyerDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Buyer Details</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">Buyer Details:</h2>
    <div class="details">
    <p>
        <strong>Buyer Name:</strong> 
        <%: Model.Name %>
        <strong>Company Name:</strong>
        <%: Model.ComName %>
    </p>
    <p>
        <strong>Email:</strong>
        <%: Model.Email %>,
        <strong>Country:</strong>
        <%: Model.Country %>
    </p>
    </div>
    
    <%: Html.ActionLink("Go Back to Buyer List", "BuyerList", "Merch")%>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
