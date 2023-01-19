<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/bb.master" CodeBehind="home.aspx.vb" Inherits="Lifesaver.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <style>.bb {
    color:#f3525a;
    font-weight:700;
    
}</style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:umangpc %>" 
        
        SelectCommand="SELECT [name], [email], [address], [time], [mno], [pincode] FROM [weblogin] where id>1 ORDER BY [name]">
    </asp:SqlDataSource>
    <link href="../../style/Admin/adminbbhome.css" rel="stylesheet" type="text/css" />
<div class="heading">
<h2><i>Blood Bank</i></h2></div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
                <td>
                    <asp:Label ID="mnoLabel" runat="server" Text='<%# Eval("mno") %>' />
                </td>
                <td>
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" 
                        Text='<%# Bind("email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mnoTextBox" runat="server" Text='<%# Bind("mno") %>' />
                </td>
                <td>
                    <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server" 
                        Text='<%# Bind("email") %>' />
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="mnoTextBox" runat="server" Text='<%# Bind("mno") %>' />
                </td>
                <td>
                    <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
                <td>
                    <asp:Label ID="mnoLabel" runat="server" Text='<%# Eval("mno") %>' />
                </td>
                <td>
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    Name</th>
                                <th runat="server">
                                    Email</th>
                                <th runat="server">
                                    Address</th>
                                <th runat="server">
                                    Time</th>
                                <th runat="server">
                                    Contact no</th>
                                <th runat="server">
                                    Pincode</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                </td>
                <td>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                </td>
                <td>
                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                </td>
                <td>
                    <asp:Label ID="mnoLabel" runat="server" Text='<%# Eval("mno") %>' />
                </td>
                <td>
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    

</asp:Content>
