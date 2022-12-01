<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbmain.Master" CodeBehind="campaign.aspx.vb" Inherits="Lifesaver.campaign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="detail" style="background:orange">
<table style="width:100%;">
<tr>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True"
AutoGenerateRows="False"
DataSourceID="SqlDataSource1"
Height="51px" Width="393px" AutoGenerateEditButton="True" 
        AutoGenerateInsertButton="True">
    <Fields>
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="address" HeaderText="address" 
            SortExpression="address" />
        <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
        <asp:BoundField DataField="pincode" HeaderText="pincode" 
            SortExpression="pincode" />
        <asp:BoundField DataField="tagline" HeaderText="tagline" 
            SortExpression="tagline" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
        <asp:BoundField DataField="approve" HeaderText="approve" 
            SortExpression="approve" />
    </Fields>
</asp:DetailsView>

    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:umangpc %>" 
        InsertCommand="INSERT INTO campaign(username, name, address, pincode, mno, tagline, time, date, approve) VALUES (@username, @name, @address, @pincode, @mno, @tagline, @time, @date, 'not')" 
        SelectCommand="SELECT name, address, mno, pincode, tagline, date, time, approve FROM campaign" 
        
        UpdateCommand="UPDATE campaign SET username = @username, name = @name, address = @address, pincode = @pincode, mno = @mno, tagline = @tagline, date = @date, time = @time where id=@id">
        <InsertParameters>
            <asp:Parameter Name="username" />
            <asp:Parameter Name="name" />
            <asp:Parameter Name="address" />
            <asp:Parameter Name="pincode" />
            <asp:Parameter Name="mno" />
            <asp:Parameter Name="tagline" />
            <asp:Parameter Name="time" />
            <asp:Parameter Name="date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" />
            <asp:Parameter Name="name" />
            <asp:Parameter Name="address" />
            <asp:Parameter Name="pincode" />
            <asp:Parameter Name="mno" />
            <asp:Parameter Name="tagline" />
            <asp:Parameter Name="date" />
            <asp:Parameter Name="time" />
            <asp:Parameter Name="id" />
        </UpdateParameters>
    </asp:SqlDataSource>
</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
<td>
&nbsp;</td>
</tr>
</table>
    
    </div>
    

</asp:Content>
