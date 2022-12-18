<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbmain.Master" CodeBehind="change.aspx.vb" Inherits="Lifesaver.change1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/common/profile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="block">
    <div class="heading"><h2><i>Change Password</i></h2></div>
    <table>
<tr>
<td>Old Password</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"  CssClass="design" AutoPostBack="True"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter old password first" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
   </td>
</tr>
<tr>
<td>New Password</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"  CssClass="design" Enabled="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Password can't be blank" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
   </td>
    
</tr>
<tr>
<td>Confirm Password</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"   CssClass="design" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*confirm Password can't be blank" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>

    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password is not matching" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#CC0000"></asp:CompareValidator>
    </td>
</tr>


<tr><td><asp:Button ID="Button1" runat="server" Text="Update password" Height="40px" 
        Width="200px" /></td>
    </tr>
    </table></div></center>
</asp:Content>