<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Prints4bitches.aspx.vb" Inherits="Prints4bitches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br /></p>
    <p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
            DeleteCommand="DELETE FROM [Stock] WHERE (([StockID] = ?) OR ([StockID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Stock] ([StockID], [Description], [Price], [Stock_level], [SupplierID]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Stock]" 
            UpdateCommand="UPDATE [Stock] SET [Description] = ?, [Price] = ?, [Stock_level] = ?, [SupplierID] = ? WHERE (([StockID] = ?) OR ([StockID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="StockID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StockID" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Stock_level" Type="Int32" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Stock_level" Type="Int32" />
                <asp:Parameter Name="SupplierID" Type="Int32" />
                <asp:Parameter Name="StockID" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StockID" 
            DataSourceID="AccessDataSource1" CssClass="table table-bordered table-hover">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True"  />
                <asp:BoundField DataField="StockID" HeaderText="StockID" ReadOnly="True" 
                    SortExpression="StockID" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Stock_level" HeaderText="Stock_level" 
                    SortExpression="Stock_level" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    SortExpression="SupplierID" />
                <asp:ImageField DataImageUrlField="Image_url" ControlStyle-Height="400px" DataImageUrlFormatString="~/img/{0}">
                <ControlStyle Height="300px" Width="400px"></ControlStyle>
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="StockID" DataNavigateUrlFormatString="product_detail.aspx?StockID={0}" DataTextField="StockID" DataTextFormatString="{0}" />
            </Columns>
        </asp:GridView>
    </p>
   </asp:Content>

