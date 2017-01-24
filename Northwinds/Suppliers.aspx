<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="Northwinds.Suppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">






    <asp:SqlDataSource ID="MainDbConnection" runat="server" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT SupplierID, CompanyName, ContactName, Address, City, Region, Country, Phone FROM northwinds.suppliers"></asp:SqlDataSource>

      <asp:Repeater ID="Repeater1" runat="server" 
          DataSourceID="MainDbConnection">
          <HeaderTemplate>
              <table id ="example" class="display" cellspacing="0" width="100%">
           <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
    <tbody>
   </HeaderTemplate>
     

   <ItemTemplate>
      
            <tr>
              <td>
                <asp:Label runat="server" ID="Label1" 
                    text='<%# Eval("SupplierID") %>' />
              </td>
              <td>
                  <asp:Label runat="server" ID="Label2" 
                      text='<%# Eval("CompanyName") %>' />
              </td>
          </tr>
              
        
  </ItemTemplate>      
                <FooterTemplate>
      </tbody>
              </table>
          </FooterTemplate> 
      </asp:Repeater>





<%--
    <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>


        </tbody>
    </table>--%>


    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>

    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.13/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.13/js/jquery.dataTables.js"></script>

</asp:Content>
