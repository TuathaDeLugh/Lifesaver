﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/bb.master" CodeBehind="remove.aspx.vb" Inherits="Lifesaver.remove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<link href="../../style/Admin/addremove.css" rel="stylesheet" type="text/css" />
<center><div class="block" >
    <div class="heading"><h2><i>Remove Blood Bank</i></h2></div>
     <table>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"   CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>email</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr><td><asp:Button ID="Button1" runat="server" Text="Delete" Height="40px" 
        Width="200px" /></td>
</tr>         
<tr>
<td colspan="2"><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label></td></tr>
    </table></div></center>
</asp:Content>