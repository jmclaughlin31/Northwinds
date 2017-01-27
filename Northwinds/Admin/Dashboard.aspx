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

    <powerbi:Report runat="server" ID="report" EmbedUrl="https://embedded.powerbi.com/appTokenReportEmbed?reportId=a019a248-ab28-4b39-8932-244f84b044f5" ReportId="a019a248-ab28-4b39-8932-244f84b044f5" CollectionName="NorthwindsPowerBI"  WorkspaceId="87da08ce-d295-4dd2-bef3-e422aa61afe1" AccessKey="1"  />
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
