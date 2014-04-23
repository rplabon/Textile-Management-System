<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Demand>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	EditDemand
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>EditDemand</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2>Edit Demand</h2>
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary("Please correct the errors and try again.") %>
        <fieldset>
           <legend>Fields</legend>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Thickness) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Thickness)%>
                <%: Html.ValidationMessageFor(m => m.Thickness, "*")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Color) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.Color)%>
                <%: Html.ValidationMessageFor(m => m.Color, "*")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Date) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Date)%>
                <%: Html.ValidationMessageFor(m => m.Date, "*")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Quantity) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Quantity)%>
                <%: Html.ValidationMessageFor(m => m.Quantity, "*")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Size) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Size)%>
                <%: Html.ValidationMessageFor(m => m.Size, "*")%>
            </div>
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
