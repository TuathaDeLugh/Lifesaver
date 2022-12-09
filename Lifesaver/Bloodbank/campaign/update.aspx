<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbcapaign.master" CodeBehind="update.aspx.vb" Inherits="Lifesaver.update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Bloodbank/updatecamp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="block1">
        <div class="updatebox">
            Enter Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Fill" CausesValidation="False"/><br/>
        </div>

        <div class="updatetab">
            <div class="heading"><h2><i>update Campaign</i></h2></div>
      <table>     
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="design" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campaign Name Is Required." ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Address</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="design" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campaign Address  Is Required." ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>

   </td>
</tr>
<tr>
<td>Pincode</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"  CssClass="design" TextMode="Number" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campaign Pincode Is Required." ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Mobile Numnber</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="design" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campaign Mobile Number Is Required." ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Tag Line</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server" CssClass="design" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campaign Tag Line Is Required." ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Date</td>
<td>
    <asp:TextBox ID="TextBox7" runat="server"  CssClass="design" Enabled="False" ></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Campaign Date Is Required." ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Time</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server"  CssClass="design" Enabled="False" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Campaign Time Is Required." ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>

<tr><td><asp:Button ID="Button2" runat="server" Text="update Campaign" Height="40px" 
        Width="200px" Enabled="False" /></td>
    <td><asp:Button ID="Button3" runat="server" Text="remove Campaign" Height="40px" 
        Width="200px" Enabled="False" /></td>
</tr>
    </table>
        </div>
        <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
        
        </div>
<div class="detail">
<table>
<tr>
<td>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="pincode" />
            <asp:BoundField DataField="MNo" HeaderText="Mobile no" SortExpression="mno" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="Approve" HeaderText="Approve" SortExpression="approve" />
        </Columns>
    </asp:GridView>

    <br />
</td>
</tr>
</table>
    </div>
    </asp:Content>