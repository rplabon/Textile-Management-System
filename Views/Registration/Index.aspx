<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Buyer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>New Account</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <form id="Form1" runat="server">
        <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true, "Registration was unsuccessful. Please correct the errors and try again.") %>
        <div class="editor-label">
            Name of the Buyer: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Name)%>
            <%: Html.ValidationMessageFor(m => m.Name, "*")%>
        </div>
        <div class="editor-label">
            Password: 
        </div>
        <div class="editor-field">
            <%: Html.PasswordFor(m => m.Pass)%>
            <%: Html.ValidationMessageFor(m => m.Pass, "*")%>
        </div>
        <%--<div class="editor-label">
            Retype Password: 
        </div>
        <div class="editor-field">
            <%: Html.PasswordFor(m => m.Pass)%>
            <%: Html.ValidationMessageFor(m => m.Pass, "*")%>
        </div>--%>
        <div class="editor-label">
            Company Name: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.ComName)%>
            <%: Html.ValidationMessageFor(m => m.ComName, "*")%>
        </div>
        <div class="editor-label">
            Email ID: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Email)%>
            <%: Html.ValidationMessageFor(m => m.Email, "*")%>
        </div>
        <div class="editor-label">
            Country Name: 
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(m => m.Country)%>
            <%: Html.ValidationMessageFor(m => m.Country, "*")%>
        </div>
        <p>
            <input type="submit" value="Submit" class="submit-s" tabindex="43" />
        </p>
        <% } %>
     </form>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
