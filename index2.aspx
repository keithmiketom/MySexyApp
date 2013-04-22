<%@ Page Title="Oops! You encountered an Error" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="index2.aspx.vb" Inherits="index2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<h1>Oops! We failed you!</h1>
<img src="img/unicorn.jpg" alt="failure unicorn" style="float:left;"/>
<p style="float:left; font-family:Sans-Serif; font-size:1.2em; width:200px;margin:100px 0 0 10px;">
        <span>“Sorry, there has been 
        an error on our website. Please <a href="Default.aspx">Visit the Home Page </a> as you may have to log in to 
        continue.”</span></p>

</asp:Content>

