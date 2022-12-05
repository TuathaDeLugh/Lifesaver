<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="profile.aspx.vb" Inherits="Lifesaver.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/homepage.css" rel="stylesheet" />
    <link href="../style/common/profile.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><center>
<div class="block">
    <div class="heading"><h2><i><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> Profile</i></h2></div>
    <table>
    <tr><td><asp:Button ID="Button3" runat="server" Text="Watch" /></td></tr>
<tr>
<td>Id</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
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
<td>email</td>
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
<td>pin code</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    </td>
</tr>
<tr>
<td>contact no</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server" Enabled="False" CssClass="design">********</asp:TextBox>
     
                 
              </td>
</tr>
<tr>
<td>question</td>
<td>
    <asp:TextBox ID="TextBox9" runat="server" Enabled="False" CssClass="design">********</asp:TextBox>
   </td>
</tr>
<tr>
<td>answer</td>
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
</asp:Content>
