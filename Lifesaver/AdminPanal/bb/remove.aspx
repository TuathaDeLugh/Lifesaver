﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/bb.master" CodeBehind="remove.aspx.vb" Inherits="Lifesaver.remove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<link href="../../style/Admin/addremove.css" rel="stylesheet" type="text/css" />
        <style>.remove {
    font-weight: 700;
    color: #F3525A;
    
}</style>
<center><div class="block1" >
    <div class="heading"><h2><i>Remove Blood Bank</i></h2></div>
     <table>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"   CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name is require" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>email</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="*email is require" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr><td></td>
    <td>
        <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Remove Blood Bank" Height="40px" 
        Width="200px" /></td>
</tr>        
    </table></div></center>
</asp:Content>
