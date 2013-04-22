<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="XML2HTMLCSS.aspx.vb" Inherits="XML2HTMLCSS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<script>
    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else {// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.open("GET", "Stock.xml", false);
    xmlhttp.send();
    xmlDoc = xmlhttp.responseXML;
    document.write("<table border='1' class='table table-hover'>");
    document.write("<tr><th>Stock ID</th><th>Description</th><th>Level</th><th>Supplier ID</th><th>Image URL</th><th>Price</th></tr>");
    var x = xmlDoc.getElementsByTagName("Stock");
    for (i = 0; i < x.length; i++) {
        document.write("<tr><td>");
        document.write(x[i].getElementsByTagName("StockID")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("Description")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("Stock_level")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("SupplierID")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("Image_url")[0].childNodes[0].nodeValue);
        document.write("</td><td>");
        document.write(x[i].getElementsByTagName("Price")[0].childNodes[0].nodeValue);
        document.write("</td></tr>");
    }
    document.write("</table>");

    </script>

</asp:Content>

