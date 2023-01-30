<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="organ.aspx.vb" Inherits="Lifesaver.organ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
        <style>.org {
    font-weight: 700;
    color: #F3525A;
    
}</style>
       <link href="../../style/Admin/approvecampaign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server"   AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" max-Width="">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" />
            <asp:BoundField DataField="donername" HeaderText="Name" SortExpression="donername" />
            <asp:BoundField DataField="bdate" HeaderText="DoB" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
            <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
            <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
            <asp:BoundField DataField="organname" HeaderText="Organ Name" SortExpression="organname" />
            <asp:ButtonField CommandName="certi" Text="Certi." ButtonType="Image" HeaderText="Certi." ImageUrl="~/files/certificate.png">
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
