<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/bb.master" CodeBehind="add.aspx.vb" Inherits="Lifesaver.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="../../style/Admin/addremove.css" rel="stylesheet" type="text/css" />
    
<center><div class="block1" >
    <div class="heading"><h2><i>Add Blood Bank</i></h2></div>
     <table>
<tr>
<td>Username</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server"   CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="*userame is require" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

   </td>
</tr>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"   CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Name is require" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Password</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"   CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Password is require" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>email</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Email is require" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>address</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server"   CssClass="design" 
        TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Address is require" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>pin code</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server"   CssClass="design"></asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Pincode is require" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>contact no</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server"  CssClass="design"></asp:TextBox>
         <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Contact number is require" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>

                 
              </td>
</tr>
<tr>
<td>Active time</td>
<td>
    <asp:TextBox ID="TextBox11" runat="server"   CssClass="design"> </asp:TextBox>
        <asp:RequiredFieldValidator  Display="Dynamic"  ID="RequiredFieldValidator8" runat="server" ErrorMessage="*Active time is require" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr><td></td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Add Blood Bank" Height="40px" 
        Width="200px" /></td>
</tr>
         

    </table></div></center>
</asp:Content>
