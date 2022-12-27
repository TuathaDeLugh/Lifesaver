<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="campaign.aspx.vb" Inherits="Lifesaver.campaign"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Admin/approvecampaign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
            <asp:BoundField DataField="tagline" HeaderText="tagline" SortExpression="tagline" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:ButtonField CommandName="approve" InsertVisible="False" Text="approve" ButtonType="Button" />
            <asp:ButtonField CommandName="reject" Text="Reject" ButtonType="Button" />
        </Columns>

    </asp:GridView>
    </asp:Content>
