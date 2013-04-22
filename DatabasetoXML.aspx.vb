Imports System.Data
Imports System.Data.OleDb

Partial Class DatabasetoXML
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Dim strConnection As String
        Dim strSQL As String
        Dim objDataSet As New DataSet()
        Dim objConnection As OleDbConnection
        Dim objAdapter As OleDbDataAdapter

        ' set the connection and query details
        strConnection = "Provider=Microsoft.Jet.OLEDB.4.0; " & _
                        "Data Source=|DataDirectory|ProjectDatabaseNew.mdb;"
        strSQL = "SELECT StockID, Description, Stock_level, SupplierID, Image_url, Price FROM Stock;"

        ' open the connection and set the command
        objConnection = New OleDbConnection(strConnection)
        objAdapter = New OleDbDataAdapter(strSQL, objConnection)

        ' fill the dataset with the data
        objAdapter.Fill(objDataSet, "Stock")
        ' create an XML file called Employees and fill this with our data
        objDataSet.WriteXml(Server.MapPath("Stock.xml"))
        ' add a link to our web page to the XML file created
        mylink.NavigateUrl="Stock.xml"

    End Sub
End Class
