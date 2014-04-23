<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Merchandiser>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Merch
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Merchandiser</h2>

    <br /><br />
    <%: Html.ActionLink("Show Buyer Lists", "BuyerList", "Merch")%><br /><br />
    <%: Html.ActionLink("Create Demand Lists", "CreateDemand",
                                            new { id = Model.ID })%><br /><br />
    <%: Html.ActionLink("Show Knitting Report", "Knitting", "Merch")%><br /><br />
    <%: Html.ActionLink("Show Yarn Report", "Yarn", "Merch")%><br /><br />
    <%: Html.ActionLink("Show Dying Report", "Dying", "Merch")%><br /><br />

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

<h2 class="name">Merchandiser Name: &nbsp;<%: Model.Name %><br /></h2>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
<%: Html.ActionLink("Show Order Lists", "Order", "Merch") %>&nbsp;&nbsp;&nbsp;
<%: Html.ActionLink("Show Demand Lists", "Demand", "TestDemand") %>
</asp:Content>
