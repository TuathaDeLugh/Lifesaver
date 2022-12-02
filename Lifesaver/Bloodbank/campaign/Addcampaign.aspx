<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbcapaign.master" CodeBehind="Addcampaign.aspx.vb" Inherits="Lifesaver.Addcampaign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Bloodbank/addcampaign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="block1">
    <div class="heading"><h2><i>Add Campaign</i></h2></div>
    <table>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>Address</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="design" TextMode="MultiLine"></asp:TextBox>
   </td>
</tr>
<tr>
<td>Pincode</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"  CssClass="design" TextMode="number"></asp:TextBox>
    </td>
</tr>
<tr>
<td>Mobile Numnber</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"  CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>Tag Line</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="design"></asp:TextBox>
    </td>
</tr>
<tr>
<td>Date</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server"  CssClass="design" ></asp:TextBox>
    </td>
</tr>
<tr>
<td>Time</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server"  CssClass="design"></asp:TextBox>
    </td>
</tr>

<tr><td><asp:Button ID="Button1" runat="server" Text="Create Campaign" Height="40px" 
        Width="200px" /></td>
    
</tr>
    </table></div>
</asp:Content>