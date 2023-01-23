<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="campaign.aspx.vb" Inherits="Lifesaver.campaign"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Admin/approvecampaign.css" rel="stylesheet" />
        <style>.ac {
    font-weight: 700;
    color: #F3525A;
    
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server"   AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" max-Width="">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
            <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
            <asp:BoundField DataField="tagline" HeaderText="Tagline" SortExpression="tagline" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
            <asp:ButtonField CommandName="map" Text="map" ButtonType="Image" HeaderText="map" ImageUrl="~/img/location.png">
                <ControlStyle CssClass="certi" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="approve" InsertVisible="False" Text="Approve" ButtonType="Button" HeaderText="Approve" >
            <ControlStyle CssClass="approve" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="reject" Text="Reject" ButtonType="Button" HeaderText="Reject">
                <ControlStyle CssClass="reject" />
            </asp:ButtonField>
        </Columns>
        <EmptyDataTemplate> <h4><center>No Data</center></h4></EmptyDataTemplate>
    </asp:GridView></br>
    <asp:Button ID="Button1" runat="server" Text="no approve" CssClass="reject" />
    </asp:Content>
