<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageAccounts.aspx.cs" Inherits="Northwinds.Admin.ManageAccounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="row">

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Dashboard.aspx">Accounts Overview</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="Customers.aspx">Customers</a></li>
                    <li><a href="Employees.aspx">Employees</a></li>
                    <li><a href="Suppliers.aspx">Suppliers</a></li>
                    <li><a href="Suppliers.aspx">Shippers</a></li>
                </ul>
            </div>
        </nav>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT [Id], [Email], [EmailConfirmed], [UserName], [AccessFailedCount], [LockoutEndDateUtc] FROM [AspNetUsers]"></asp:SqlDataSource>
    
    <div class="row">
        <asp:Repeater ID="rep" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table id="example" class="display" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Email Confirmed</th>
                            <th>Access Attempts</th>
                            <th>Lockout Release</th>
                        </tr>
                    </thead>

                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("UserName") %></td>
                    <td><%# Eval("Email") %></td>
                    <td><%# Eval("EmailConfirmed") %></td>
                    <td><%# Eval("AccessFailedCount") %></td>
                    <td><%# Eval("LockoutEndDateUtc") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <tfooter>
                        <tr>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Email Confirmed</th>
                            <th>Access Attempts</th>
                            <th>Lockout Release</th>
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
