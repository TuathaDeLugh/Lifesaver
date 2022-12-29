<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="home.aspx.vb" Inherits="Lifesaver.home3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Admin/userhome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class ="bld">
            <div class="heading"><h2><i>Blood donation approvemant</i></h2></div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                    <asp:BoundField DataField="tagline" HeaderText="tagline" SortExpression="tagline" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="approve" HeaderText="approve" SortExpression="approve" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:umangpc %>" SelectCommand="SELECT * FROM [campaign]"></asp:SqlDataSource>
        </div>
        <div class ="ord"><div class="heading"><h2><i>Organ donation approvemant</i></h2></div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                    <asp:BoundField DataField="tagline" HeaderText="tagline" SortExpression="tagline" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="approve" HeaderText="approve" SortExpression="approve" />
                </Columns>
            </asp:GridView>
        </div>
  
    <div class ="cam"><div class="heading"><h2><i>campaign approvemant</i></h2></div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                <asp:BoundField DataField="tagline" HeaderText="tagline" SortExpression="tagline" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="approve" HeaderText="approve" SortExpression="approve" />
            </Columns>
        </asp:GridView>
            
    </div>
</asp:Content>
