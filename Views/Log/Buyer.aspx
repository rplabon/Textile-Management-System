<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Buyer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Buyer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Buyer: <%: Model.ComName %></h2>
    <br />
    <br />
    <br />
    <br />

    <%: Html.ActionLink("Show upcoming meeting details", "Meeting", "Buyer") %><br /><br />
    <%: Html.ActionLink("Show all orders", "BuyerOrders",
                                        new { id = Model.ID })%><br /><br />
    <%: Html.ActionLink("Deactivate account", "Deactivate", 
                                        new { id = Model.ID })%>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h2 class="heading">Details</h2>
    <li class="details">
    Buyer Name: <%: Model.Name %><br />
    Company Name: <%: Model.ComName %><br />
    Email: <%: Model.Email %><br />
    Country: <%: Model.Country %><br />
    </li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">

    <%: Html.ActionLink("Edit information", "EditBuyer", 
                                        new { id = Model.ID })%>&nbsp;&nbsp;&nbsp;
    <%: Html.ActionLink("Create new order", "CreateOrder",
                                        new { id = Model.ID })%>

</asp:Content>
