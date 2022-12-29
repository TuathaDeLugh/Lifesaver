<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="bloodapprove.aspx.vb" Inherits="Lifesaver.bloodapprove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
        <style>.bd {
    font-size:1.7rem;
    font-weight:600;
    
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" max-Width="" AllowSorting="True" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="donername" HeaderText="donername" SortExpression="donername" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="bdate" HeaderText="bdate" SortExpression="bdate" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
            <asp:BoundField DataField="certificate" HeaderText="certificate" SortExpression="certificate" />
            <asp:HyperLinkField DataTextField="certificate" SortExpression="certificate" />
        </Columns>

    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:umangpc %>" SelectCommand="SELECT [username], [donername], [gender], [bdate], [email], [password], [address], [mno], [certificate] FROM [users]"></asp:SqlDataSource>
</asp:Content>
