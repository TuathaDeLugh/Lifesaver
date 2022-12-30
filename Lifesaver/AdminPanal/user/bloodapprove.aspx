<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="bloodapprove.aspx.vb" Inherits="Lifesaver.bloodapprove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
        <style>.bd {
    font-size:1.7rem;
    font-weight:600;
    
}</style>
    <link href="../../style/Admin/approvecampaign.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" max-Width="auto">
        <Columns>
            <asp:BoundField DataField="donername" HeaderText="Name" SortExpression="donername" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="bdate" HeaderText="DoB" SortExpression="bdate" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                    <asp:ButtonField CommandName="certi" Text="certi." ButtonType="Image" HeaderText="certi." ImageUrl="~/files/certificate.png" >
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
    </asp:GridView>
    </br><asp:Button ID="Button1" runat="server" Text="no donate" CssClass="reject" />
</asp:Content>
