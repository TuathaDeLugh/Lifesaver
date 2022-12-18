<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="profile.aspx.vb" Inherits="Lifesaver.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/homepage.css" rel="stylesheet" />
    <link href="../style/common/profile.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/sweet.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><center>
<div class="block">
    <div class="heading"><h2><i><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> Profile</i></h2></div>
    <table>
    <tr><td>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPanal/change.aspx">Change Password</asp:HyperLink></td></tr>
<tr>
<td>Username</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="****" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
   </td>
</tr>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
    <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Name is require" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    </td>
</tr>

<tr>
<td>Email</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
     <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Email is require" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
<td>address</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server" Enabled="False"  CssClass="design" 
        TextMode="MultiLine">********</asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Address is require" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Pin code</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Pincode is require" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>Contact no</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server" Enabled="False" CssClass="design">********</asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Contact Number is require" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
 
                 
              </td>
</tr>
<tr>
<td>Security Question</td>
<td>
    <asp:TextBox ID="TextBox9" runat="server" Enabled="False" CssClass="design">********</asp:TextBox>
     <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Security Question is require" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Security Answer</td>
<td>
    <asp:TextBox ID="TextBox10" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Security Answer is require" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Active time</td>
<td>
    <asp:TextBox ID="TextBox11" runat="server" Enabled="False"  CssClass="design">********</asp:TextBox>
        <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Active Time is require" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr><td><asp:Button ID="Button1" runat="server" Text="want to update" Height="40px" 
        Width="200px" CausesValidation="False"/></td>
    
<td><asp:Button ID="Button2" runat="server" Text="Save" Height="40px" 
        Visible="False" Width="200px" /></td></tr>
    </table></div></center>
    
</asp:Content>