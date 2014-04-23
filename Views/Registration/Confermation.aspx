<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Confermation
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Confermation</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

<h3 class="green">
Your ID is: <%: Session["buyerID"] %>
</h3>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
