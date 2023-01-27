<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="removeuser.aspx.vb" Inherits="Lifesaver.removeuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
        <style>.rmu {
    font-weight: 700;
    color: #F3525A;
    
}
.detail{
    overflow:auto;
}
        </style>
    <link href="../../style/Bloodbank/updatecamp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="block1">
        <table>    
            <tr>
<td>userame</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="design"></asp:TextBox>
                </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="username Is Required." ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="design"></asp:TextBox>
                </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name Is Required." ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Mobile-no.</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="design"></asp:TextBox>
                </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile Number Is Required." ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>

   </td>
</tr>
            <tr>
                <td>E-mail</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="design"></asp:TextBox>
                    </br><asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="E-mail Address  Is Required." ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td></td>
    <td><asp:Button ID="Button3" runat="server" Text="remove" Height="40px"  CssClass="btn" /></td>
</tr>
    </table>
        </div>
    <div class="detail">
<table>
<tr>
<td>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="donername" HeaderText="Name" SortExpression="donername" />
            <asp:BoundField DataField="mno" HeaderText="Mobile Number" SortExpression="mno" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
        <EmptyDataTemplate> <h4><center>No Data</center></h4></EmptyDataTemplate>
    </asp:GridView>

    <br />
</td>
</tr>
</table>
    </div>
</asp:Content>
