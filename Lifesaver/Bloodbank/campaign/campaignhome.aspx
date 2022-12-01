<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbcapaign.master" CodeBehind="campaignhome.aspx.vb" Inherits="Lifesaver.campaignhome" %>
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
    <div class="detail">
<table >

<tr>
<td class="detail">
    not approved
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>

    <br />
</td>
</tr>
    <tr>
<td class="detail">
    rejected
    <asp:GridView ID="GridView3" runat="server">
    </asp:GridView>

    <br />
</td>
</tr>
</table>
    
    </div>
   </asp:Content> 
