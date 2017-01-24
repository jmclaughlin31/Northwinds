<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="Northwinds.Admin.Suppliers" %>
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
                    <li class="active"><a href="Suppliers.aspx">Suppliers</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Orders.aspx">Orders</a></li>
                </ul>
            </div>
        </nav>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="select * from northwinds.suppliers;"></asp:SqlDataSource>
    <div class="row">
        <asp:Repeater ID="rep" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table id="example" class="display" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>SupplierID</th>
                            <th>CompanyName</th>
                            <th>ContactTitle</th>
                            <th>CompanyName</th>
                            <th>Phone</th>
                        </tr>
                    </thead>

                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("SupplierID") %></td>
                    <td><%# Eval("CompanyName") %></td>
                    <td><%# Eval("ContactTitle") %></td>
                    <td><%# Eval("CompanyName") %></td>
                    <td><%# Eval("Phone") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <tfooter>
                        <tr>
                            <th>SupplierID</th>
                            <th>CompanyName</th>
                            <th>ContactTitle</th>
                            <th>CompanyName</th>
                            <th>Phone</th>
                        </tr>
                    </tfooter>
                </tbody>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>

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
