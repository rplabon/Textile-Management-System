<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<TextileManagementSystem.Models.Meeting>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	MeetingDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>MeetingDetails</h2>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <h2 class="heading">Order No: &nbsp;&nbsp;&nbsp;<%: Model.OrderNo %></h2>
    <div class="details">
    <p>
        <strong>When:</strong>
        <%: Model.Date.ToShortDateString() %>
    </p>
    <p>
        <strong>Contact:</strong>
        <%: Model.Contact %>,<br />
        <strong>Details:</strong>
        <%: Model.Details %>
    </p>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
