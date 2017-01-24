<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Northwinds.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Dashboard</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="#">Customers</a></li>
                    <li><a href="#">Employees</a></li>
                    <li><a href="#">Suppliers</a></li>
                    <li class="active"><a href="#">Orders</a></li>
                </ul>
            </div>
        </nav>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="select * from northwinds.orders;"></asp:SqlDataSource>
    <div class="row">
        <asp:Repeater ID="rep" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table id="example" class="display" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>OrderId</th>
                            <th>CustomerId</th>
                            <th>EmployeeId</th>
                            <th>OrderDate</th>
                            <th>RequiredDate</th>
                        </tr>
                    </thead>

                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("OrderID") %></td>
                    <td><%# Eval("CustomerID") %></td>
                    <td><%# Eval("EmployeeID") %></td>
                    <td><%# Eval("OrderDate") %></td>
                    <td><%# Eval("RequiredDate") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <tfooter>
                        <tr>
                            <th>OrderId</th>
                            <th>CustomerId</th>
                            <th>EmployeeId</th>
                            <th>OrderDate</th>
                            <th>RequiredDate</th>
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
