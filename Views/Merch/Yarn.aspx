<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Yarn>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Yarn
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Yarn</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">All Yarn Reports</h2>

    <ul class="name">
        <% foreach (var list in Model)
           { %>
        
            <li>
                Demand No: <%: list.DemandNo %>, 
                Date: <%: list.Date %>, 
                M/C_Dia: <%: list.M_C_Dia %>, 
                F/Gsum: <%: list.F_Gsum %>, 
                Quality: <%: list.Quantity %>, 
                Type: <%: list.Type %>, 
                Test: <%: list.Test %>.
            </li>
        
        <% } %>
    </ul>

    <%--<%: Html.ActionLink("Go Back to your Account", "MerchNew", "Log", new { id = Convert.ToInt32(Session["MerchID"])}, null ) %>--%>

    <br />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
