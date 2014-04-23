<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Buyer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Deactivate
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Deactivation</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2>
        Deactivation Confirmation
    </h2>

    <div>
        <p>Please confirm you want to cancel the account ID: 
        <i> <%: Model.ID %>? </i> </p>
    </div>
    
    <% using (Html.BeginForm()) { %>

        <input name="confirmButton" type="submit" value="Deactivate" />        

    <% } %>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
