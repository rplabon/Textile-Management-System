<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TextileManagementSystem.Models.Knitting>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Knitting
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Knitting</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">All Knitting Reports</h2>

    <ul class="name">
        <% foreach (var list in Model)
           { %>
        
            <li>
                Demand No: <%: list.DemandNo %>, 
                Date: <%: list.Date %>, 
                Quality: <%: list.Quantity %>, 
                Color: <%: list.Color %>, 
                Shade: <%: list.Shade %>, 
                Width: <%: list.Width %>, 
                Type: <%: list.Type %>, 
                Hole: <%: list.Hole %>, 
                Total Point: <%: list.TotalPoitn %>.
            </li>
        
        <% } %>
    </ul>

    <%--<%: Html.ActionLink("Go Back to your Account", "~/Log/Merch", new { id = (Int32)Session["MerID"] })%>--%>

    <br />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
