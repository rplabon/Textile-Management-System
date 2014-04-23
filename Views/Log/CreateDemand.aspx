<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Demand>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CreateDemand
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>CreateDemand</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <form id="Form1" runat="server">
        <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true, "Registration was unsuccessful. Please correct the errors and try again.") %>
        <div class="editor-label">
            Thickness: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Thickness)%>
            <%: Html.ValidationMessageFor(m => m.Thickness, "*")%>
        </div>
        <div class="editor-label">
            Color: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Color)%>
            <%: Html.ValidationMessageFor(m => m.Color, "*")%>
        </div>
        <div class="editor-label">
            Size: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Size)%>
            <%: Html.ValidationMessageFor(m => m.Size, "*")%>
        </div>
        <div class="editor-label">
            Quantity: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Quantity)%>
            <%: Html.ValidationMessageFor(m => m.Quantity, "*")%>
        </div>
        <div class="editor-label">
            Size: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Size)%>
            <%: Html.ValidationMessageFor(m => m.Size, "*")%>
        </div>
        <div class="editor-label">
            Order No: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.OrderNo)%>
            <%: Html.ValidationMessageFor(m => m.OrderNo, "*")%>
        </div>
        <p>
            <input type="submit" value="Submit" class="submit-s" tabindex="43" />
        </p>
        <% } %>
     </form>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
