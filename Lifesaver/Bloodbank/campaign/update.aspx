<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbcapaign.master" CodeBehind="update.aspx.vb" Inherits="Lifesaver.update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/bbcampaign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div class="detail">
<table >
<tr>
<td class="detail">
    approved
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

    <br />
</td>
</tr>
</table>
    </div>
    </asp:Content>