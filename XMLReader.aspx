<!--edits an xml file lets you update the stock file -->

<%@ Page Language="VB" %>
<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
   private i, j as integer
   private strOutput as string = ""
   public xmldoc as new XMLDataDocument()
   
   sub Page_Load(Sender as Object, e as EventArgs)
      if not Page.IsPostBack then
         GetData()
         BindControl()
      end if
   end sub
   
   sub UpdateBtn_Click(Sender as Object, e as EventArgs)
        Dim StockID As TextBox
        Dim Description As TextBox
        Dim SupplierID As TextBox
        Dim Image_url As TextBox
        Dim Stock_level As TextBox
        Dim Price As TextBox
      
      GetData()
        'update data
        'Adds the row headers by controls
      For i = 0 To DataGrid1.Items.Count-1
            StockID = DataGrid1.Items(i).FindControl("StockID")
            Description = DataGrid1.Items(i).FindControl("Description")
            SupplierID = DataGrid1.Items(i).FindControl("SupplierID")
            Stock_level = DataGrid1.Items(i).FindControl("Stock_level")
            Image_url = DataGrid1.Items(i).FindControl("Image_url")
            Price = DataGrid1.Items(i).FindControl("Price")
            'generates rows and cells for each li
      
            xmldoc.DataSet.Tables(0).Rows(i)("StockID") = StockID.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Description") = Description.Text
            xmldoc.DataSet.Tables(0).Rows(i)("SupplierID") = SupplierID.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Stock_level") = Stock_level.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Image_url") = Image_url.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Price") = Price.Text
      Next
      
      try
            xmldoc.Save(Server.MapPath("Stock.xml"))
      catch
         output.Text = "Error updating data"
      end try
      
      BindControl()
   end sub
   
   sub GetData()
      try
            xmldoc.DataSet.ReadXml(Server.MapPath("Stock.xml"))
      catch ex as Exception
         output.Text = "Error accessing XML file"
      end try
   end sub
   
   sub BindControl()
      DataGrid1.DataSource = xmldoc.DataSet
      DataGrid1.DataMember = xmldoc.DataSet.Tables(0).TableName
      DataGrid1.DataBind()
   end sub
</script>

<html>
<head>
<link rel="Stylesheet" href="Styles/bootstrap.css" />
</head>
<body>
   <asp:Label id="output" runat="server" />
   <form id="Form1" runat="server">
   <asp:DataGrid id="DataGrid1" runat="server" 
      BorderColor="black" 
      GridLines="Vertical" 
      HeaderStyle-BackColor="magenta"
      ItemStyle-BackColor="#ffffff"
      AlternatingItemStyle-Backcolor="pink" 
      AutogenerateColumns="false" >
      <Columns>
         <asp:TemplateColumn HeaderText="StockID">
            <ItemTemplate>
               <asp:TextBox id="StockID" runat="server" 
                  Text='<%# Container.DataItem("StockID") %>' />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Description">
            <ItemTemplate>
               <asp:TextBox id="Description" runat="server" 
                  Text='<%# Container.DataItem("Description") %>' 
                  width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="SupplierID">
            <ItemTemplate>
               <asp:TextBox id="SupplierID" runat="server" 
                  Text='<%# Container.DataItem("SupplierID") %>' 
                  width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Stock_level">
            <ItemTemplate>
               <asp:TextBox id="Stock_level" runat="server" 
                  Text='<%# Container.DataItem("Stock_level") %>' 
                  width="75px" />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Image_url">
            <ItemTemplate>
               <asp:TextBox id="Image_url" runat="server" 
                  Text='<%# Container.DataItem("Image_url") %>'
                  width="50px" />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Price">
            <ItemTemplate>
               <asp:TextBox id="Price" runat="server" 
                  Text='<%# Container.DataItem("price") %>'
                  width="50px" />
            </ItemTemplate>
         </asp:TemplateColumn>
      </Columns>     
   </asp:DataGrid>
   
   <center>
   <asp:Button id="update" runat="server"
      OnClick="UpdateBtn_Click"
      text="Update!" />
   </center>
   </form>

   <a href="Default.aspx" title="home" class="btn btn-info">Link to home</a>
</body>
</html>

