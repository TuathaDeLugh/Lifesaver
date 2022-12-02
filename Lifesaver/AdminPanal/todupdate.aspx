<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="todupdate.aspx.vb" Inherits="Lifesaver.todupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/common/profile.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center><div class="block">
 <div class="heading"><h2><i>Tip Of The Day No. :<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </i></h2></div>
 <table>
  <tr><td><asp:Button ID="Button1" runat="server" Text="correction" Width="120px" BackColor="#FFFF66" BorderColor="Red" /></td></tr>

<tr>
<td>Tip :</td></tr><tr>
<td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="design" 
        TextMode="MultiLine" Height="400px" Width="600px"></asp:TextBox>
    </td></tr><tr>
    <td><asp:Button ID="Button2" runat="server" Text="Update" /></td>
</tr>
</table>
</div></center>
</asp:Content>
