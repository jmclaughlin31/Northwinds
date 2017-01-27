<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Northwinds.Admin.Dashboard" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="row">

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Dashboard.aspx">Dashboard</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="Customers.aspx">Customers</a></li>
                    <li><a href="Employees.aspx">Employees</a></li>
                    <li><a href="Suppliers.aspx">Suppliers</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Orders.aspx">Orders</a></li>
                </ul>
            </div>
        </nav>
    </div>
    <powerbi:Token runat="server" AccessToken="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ2ZXIiOiIwLjIuMCIsIndjbiI6Ik5vcnRod2luZHNQb3dlckJJIiwid2lkIjoiNGIzOTYzMzQtZDI2My00N2NlLWFiZTMtNjgxNThiNjQ5MTViIiwicmlkIjoiYTAxOWEyNDgtYWIyOC00YjM5LTg5MzItMjQ0Zjg0YjA0NGY1IiwiaXNzIjoiUG93ZXJCSVNESyIsImF1ZCI6Imh0dHBzOi8vYW5hbHlzaXMud2luZG93cy5uZXQvcG93ZXJiaS9hcGkiLCJleHAiOjE0ODU1MTk3NjUsIm5iZiI6MTQ4NTUxNjE2NX0.a9WhDCKaljMFct6dra-8FcWr4mZOahVhQDiMcZ7QM60" ></powerbi:Token>
    <powerbi:Report runat="server" ReportId="a019a248-ab28-4b39-8932-244f84b044f5" WorkspaceId="4b396334-d263-47ce-abe3-68158b64915b" CollectionName="NorthwindsPowerBI"  EmbedUrl="https://embedded.powerbi.com/appTokenReportEmbed?reportId=a019a248-ab28-4b39-8932-244f84b044f5"/>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" type="text/css" />
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        //$(function () {

        //    $(".gvv").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        //});

        $(document).ready(function () {
            $('#example').DataTable();
        });


    </script>

</asp:Content>
