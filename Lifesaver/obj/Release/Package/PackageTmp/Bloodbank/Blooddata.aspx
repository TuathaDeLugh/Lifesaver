<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbmain.Master" CodeBehind="Blooddata.aspx.vb" Inherits="Lifesaver.Blooddata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/Bloodbank/bbblooddata.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
<div class="block">
<div class="heading"><center><h2><i><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> Blood Data</i></h2></center></div>
    <table>
    <tr>
    <td colspan="2"><asp:Button ID="Button3" runat="server" Text="Watch Exisested Data" /></td>
</tr>

<tr>
<th colspan="2">O</th>
</tr>
<tr>
<td><div class="inputBox">
            <span>O+</span>
				<asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox></div>
    </td>
    <td>
    <div class="inputBox">
            <span>O-</span>
				<asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox></td></div>            
 </tr>
 <tr>
<th colspan="2">A</th>
</tr>
<tr>
<td><div class="inputBox">
            <span>A+</span>
				<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox></div>
    </td>
    <td>
    <div class="inputBox">
            <span>A-</span>
				<asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox ></td>
                </div>
 </tr>
 <tr>
<th colspan="2">B</th>
</tr>
<tr>
<td><div class="inputBox">
            <span>B+</span>
				<asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox></div>
    </td>
    <td>
    <div class="inputBox">
            <span>B-</span>
				<asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox></td>
                </div>
 </tr>
 <tr>
<th colspan="2">AB</th>
</tr>
<tr>
<td><div class="inputBox">
            <span>AB+</span>
				<asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox></div>
    </td>
    <td>
    <div class="inputBox">
            <span>AB-</span>
				<asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox></td>
                </div>
 </tr>
     <tr>
    <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Save" /></td>
</tr>
 </table>
 </div>
        </center>
</asp:Content>
