Imports System.Data
Imports System.Data.OleDb

Partial Class ADOsuppliers
    Inherits System.Web.UI.Page

    Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Create a connection string
        Dim connString As String
        connString = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA SOURCE=|DataDirectory|ProjectDatabaseNew.mdb;"

        'Open a connection
        Dim objConnection As OleDbConnection
        objConnection = New OleDbConnection(connString)
        objConnection.Open()

        'Specify the SQL string
        Dim strSQL As String = "SELECT SupplierName, SupplierCity, StockID FROM Suppliers"

        'Create a command object
        Dim objCommand As OleDbCommand
        objCommand = New OleDbCommand(strSQL, objConnection)

        'Get a datareader
        Dim objDataReader As OleDbDataReader
        objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection)

        'Do the DataBinding
        dgResults.DataSource = objDataReader
        dgResults.DataBind()

        'Close the datareader/db connection
        objDataReader.Close()
    End Sub

End Class
