<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="home.aspx.vb" Inherits="Lifesaver.home3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Admin/userhome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <div class ="bld">
            <div class="heading"><h2><i>Blood donation approved</i></h2></div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="donername" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                </Columns>
                           <EmptyDataTemplate> <h4><center>No Data</center></h4></EmptyDataTemplate>
            </asp:GridView>
        </div>
        <div class ="ord"><div class="heading"><h2><i>Organ donation approved</i></h2></div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" >
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="donername" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                    <asp:BoundField DataField="organname" HeaderText="Organname" SortExpression="organname" />
                </Columns>
                <EmptyDataTemplate> <h4><center>No Data</center></h4></EmptyDataTemplate>
            </asp:GridView>
        </div>
  
    <div class ="cam"><div class="heading"><h2><i>campaign approved</i></h2></div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                <asp:BoundField DataField="mno" HeaderText="Mobile no." SortExpression="mno" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            </Columns>
            <EmptyDataTemplate> <h4><center>No Data</center></h4></EmptyDataTemplate>
        </asp:GridView>
            
    </div>
</asp:Content>
