<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ADOsuppliers.aspx.vb" Inherits="ADOsuppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">



  <asp:DataGrid id="dgResults" runat="server"  
        CssClass="table table-bordered table-hover" AllowSorting="True">
      <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" 
          Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" 
          HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:DataGrid>


</asp:Content>

