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
   </td>
</tr>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"   CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>Password</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"   CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>email</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>address</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server"   CssClass="design" 
        TextMode="MultiLine"></asp:TextBox>
    </td>
</tr>
<tr>
<td>pin code</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server"   CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>contact no</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server"  CssClass="design"></asp:TextBox>
     
                 
              </td>
</tr>
<tr>
<td>Active time</td>
<td>
    <asp:TextBox ID="TextBox11" runat="server"   CssClass="design"> </asp:TextBox>
    </td>
</tr>
<tr><td><asp:Button ID="Button1" runat="server" Text="ADD" Height="40px" 
        Width="200px" /></td>
    
</tr>
         

    </table></div></center>
</asp:Content>
