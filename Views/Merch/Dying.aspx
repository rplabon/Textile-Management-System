<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Dying>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Dying
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Dying</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">All Dying Reports</h2>

    <ul class="name">
        <% foreach (var list in Model)
           { %>
        
            <li>
                Demand No: <%: list.DemandNo %>, 
                Date: <%: list.Date %>, 
                CMC Decision: <%: list.CMC_Decision %>, 
                CMC DE: <%: list.CMC_DE %>, 
                DL: <%: list.DL %>, 
                DA: <%: list.DA %>, 
                DB: <%: list.DB %>, 
                DC: <%: list.DC %>, 
                DH: <%: list.DH %>.
            </li>
        
        <% } %>
    </ul>

    <%--<%: Html.ActionLink("Go Back to your Account", "~/Log/Merch", new { id = (Int32)Session["MerID"] })%>--%>

    <br />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
