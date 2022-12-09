<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="profile.aspx.vb" Inherits="Lifesaver.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/homepage.css" rel="stylesheet" />
    <link href="../style/common/profile.css" rel="stylesheet" type="text/css" />
    <script src="../../js/sweet.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><center>
<div class="block">
    <div class="heading"><h2><i><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> Profile</i></h2></div>
    <table>
    <tr><td><asp:Button ID="Button3" runat="server" Text="Watch" /></td></tr>
<tr>
<td>Username</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
   </td>
</tr>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>Password</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>Email</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>address</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server" Enabled="False"  CssClass="design" 
        TextMode="MultiLine">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>Pin code</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>Contact no</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server" Enabled="False" CssClass="design">********</asp:TextBox>
     
                 
              </td>
</tr>
<tr>
<td>Question</td>
<td>
    <asp:TextBox ID="TextBox9" runat="server" Enabled="False" CssClass="design">********</asp:TextBox>
   </td>
</tr>
<tr>
<td>Answer</td>
<td>
    <asp:TextBox ID="TextBox10" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>Active time</td>
<td>
    <asp:TextBox ID="TextBox11" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr><td><asp:Button ID="Button1" runat="server" Text="want to update" Height="40px" 
        Width="200px" /></td>
    
<td><asp:Button ID="Button2" runat="server" Text="Save" Height="40px" 
        Visible="False" Width="200px" /></td></tr>
    </table></div></center>
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"  CssClass="design" Visible="false"/>
</asp:Content>
