<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LogOn
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Logging</h2>

        <!-- login -->
        <li class="box">
            <h2 class="title">
                Login</h2>
                <ul>
                    <li>
                        <div id="loginblock">
                            <form runat="server">
                            <% using (Html.BeginForm()) { %>
                            <%: Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>
                            <p>
                                ID:<br />
                                <%: Html.TextBox("formID") %>
                            </p>
                            <p>
                                Password:<br />
                                <%: Html.Password("formPass") %>
                            </p>
                            <%--<p>
                                <input type="hidden" name="processlogin" value="1" />
                                <input type="hidden" name="return" value="" />
                                <input class="checkbox" type="checkbox" name="persistent" tabindex="42" />
                                <small>Remember me</small>
                            </p>--%>
                            <p>
                                <input type="submit" value="Login" class="submit-s" tabindex="43" />
                            </p>
                            <% } %>
                            </form>
                        </div>
                    </li>
                </ul>
            </li>
        <!-- /login -->
        <br />
        <br />
        <br />

        <p>No registered yet! Click 
        <%: Html.ActionLink("here", "Index", "Registration")%> for registration.</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <!-- vote button -->
    <div class="vote">
        <span class="subtext"><a href="#"></a></span>
    </div>
    <!-- /vote button -->
    <!-- post header -->
    <div class="postheader">
        <!-- category + tags -->
        <p class="postcategory">
            &nbsp;</p>
        <!-- /category + tags -->
        <!-- title -->
        <h3 class="posttitle">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">
                Merchandising</a>
        </h3>
        <!-- /title -->
        <!-- posted by... -->
        <div class="postinfo">
            <p>
                &nbsp;</p>
        </div>
        <!-- /posted by... -->
    </div>
    <!-- /post header -->
    <!-- post summary -->
    <div class="postbody">
        <p>
            &nbsp;</p>
        <p>
            Merchandising is the methods, practices, and operations used to promote and sustain
            certain categories of commercial activity. In the broadest sense, merchandising
            is any practice which contributes to the sale of products to a consumer. Merchandising
            is an important part for any kind of company such as Textile Company, or any other
            multinational company. We cannot imagine the textile management system except the
            Merchandising. Yes, we will implement the Merchandising part for the textile management
            system in this course. We will focus on better communication between Merchandiser
            and Buyer. Also the system will contribute to keep information of the different
            departments such as dying, yarn, and knitting.
        </p>
    </div>
    <!-- /post summary -->
    <!-- links -->
    <div class="clear">
    </div>
    <!-- /links -->

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="DetailsContent" runat="server">
</asp:Content>
