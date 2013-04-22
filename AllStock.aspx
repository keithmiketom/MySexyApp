<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AllStock.aspx.vb" Inherits="AllStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StockID" 
        DataSourceID="ObjectDataSource1" CssClass="table table-bordered table-hover">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="StockID" HeaderText="StockID" ReadOnly="True" 
                SortExpression="StockID" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Stock_level" HeaderText="Stock_level" 
                SortExpression="Stock_level" />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                SortExpression="SupplierID" />
            <asp:BoundField DataField="Image_url" HeaderText="Image_url" 
                SortExpression="Image_url" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetStock" 
        TypeName="DataSet2TableAdapters.StockTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_StockID" Type="String" />
            <asp:Parameter Name="Original_Description" Type="String" />
            <asp:Parameter Name="Original_Price" Type="String" />
            <asp:Parameter Name="Original_Stock_level" Type="Int32" />
            <asp:Parameter Name="Original_SupplierID" Type="Int32" />
            <asp:Parameter Name="Original_Image_url" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StockID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="Image_url" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="Int32" />
            <asp:Parameter Name="Image_url" Type="String" />
            <asp:Parameter Name="Original_StockID" Type="String" />
            <asp:Parameter Name="Original_Description" Type="String" />
            <asp:Parameter Name="Original_Price" Type="String" />
            <asp:Parameter Name="Original_Stock_level" Type="Int32" />
            <asp:Parameter Name="Original_SupplierID" Type="Int32" />
            <asp:Parameter Name="Original_Image_url" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

