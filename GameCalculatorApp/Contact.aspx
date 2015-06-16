<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GameCalculatorApp.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Me!</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="container-fluid">
        <div class="jumbotron">
            <p>Contact me anytime!  I never sleep.</p>
            <div class="panel">
                <a class="btn btn-lg btn-info" href="mailto:kellymcalpine73@gmail.com" role="button">Send a Raven &raquo;</a>
            </div>

            <div class="panel">
                <a class="btn btn-lg btn-info" href="tel:7057184390" role="button">Ring the Alarm &raquo;</a>
            </div>
        </div>
        <!-- /.col-sm-4 -->
    </div>
</asp:Content>
