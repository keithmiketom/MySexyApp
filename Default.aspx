<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Welcome Bitches!</h2>
    <p>Welcome to our site, well sell a variety of goods and services. That's ACME.</p>
    <p>&nbsp;</p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
            SelectCommand="SELECT * FROM [Stock]"></asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StockID" 
            DataSourceID="AccessDataSource1" CssClass="table table-bordered table-hover">
            <Columns>
                <asp:ImageField DataImageUrlField="Image_url" ControlStyle-Height="400px" DataImageUrlFormatString="~/img/{0}">
                <ControlStyle Height="300px" Width="400px"></ControlStyle>
                </asp:ImageField>
                <asp:BoundField DataField="StockID" HeaderText="Stock ID" SortExpression="StockID" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Stock_level" HeaderText="Stock_level" 
                    SortExpression="Stock_level" />
            </Columns>
        </asp:GridView>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    
</asp:Content>