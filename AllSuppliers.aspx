<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AllSuppliers.aspx.vb" Inherits="AllSuppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
   
    <div>
      
        <h1>
            All Suppliers</h1>
        <p>
            <asp:GridView ID="GridView1" runat="server"
              CssClass=" DataWebControlStyle table table-bordered table-hover">
               <HeaderStyle CssClass="HeaderStyle" />
               <AlternatingRowStyle CssClass="AlternatingRowStyle" />
            </asp:GridView>
             </p>
    </div>
   

</asp:Content>

