<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/bb.master" CodeBehind="Blooddata.aspx.vb" Inherits="Lifesaver.Blood_Data" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="../../style/Admin/adminbbhome.css" rel="stylesheet" type="text/css" />
    <asp:Timer ID="AutoRefreshTimer" runat="server" 
                Interval="5000" 
                 ontick="AutoRefreshTimer_Tick"/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Blood Bank Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="opve" HeaderText="O+" SortExpression="opve" />
            <asp:BoundField DataField="onve" HeaderText="O-" SortExpression="onve" />
            <asp:BoundField DataField="apve" HeaderText="A+" SortExpression="apve" />
            <asp:BoundField DataField="anve" HeaderText="A-" SortExpression="anve" />
            <asp:BoundField DataField="bpve" HeaderText="B+" SortExpression="bpve" />
            <asp:BoundField DataField="bnve" HeaderText="B-" SortExpression="bnve" />
            <asp:BoundField DataField="abpve" HeaderText="AB+" SortExpression="abpve" />
            <asp:BoundField DataField="abnve" HeaderText="AB-" SortExpression="abnve" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:umangpc %>" 
        SelectCommand="SELECT [Name], [opve], [onve], [apve], [anve], [bpve], [bnve], [abpve], [abnve] FROM [blooddata] ORDER BY [username]">
    </asp:SqlDataSource>


</asp:Content>
