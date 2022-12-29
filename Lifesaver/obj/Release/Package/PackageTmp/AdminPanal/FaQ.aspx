<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="FaQ.aspx.vb" Inherits="Lifesaver.FaQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       
    <link href="../style/Admin/faq.css" rel="stylesheet" />
        <style>.faq {
    font-size:1.7rem;
    font-weight:600;
    
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="content">
    <div class ="block">
<div class="heading">
<h2><i>Feedback & Question</i></h2></div>
        <div class="filter">Filter By <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="*">all</asp:ListItem>
            <asp:ListItem Value="feedback">Feed back</asp:ListItem>
            <asp:ListItem Value="question">Question</asp:ListItem>
            <asp:ListItem Value="bbadd">Blood Bank Add</asp:ListItem>
            </asp:DropDownList> </div>
        <table>
            
            <tr>
                <td>
                    <asp:ListView ID="ListView1" runat="server">
                        <AlternatingItemTemplate>
                            <span style="">name:
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />
                            email:
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                            <br />
                            type:
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                            <br />
                            subject:
                            <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            <br />
                            maindata:
                            <asp:Label ID="maindataLabel" runat="server" Text='<%# Eval("maindata") %>' />
                            <br />
<br /></span>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <span style="">name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <br />
                            type:
                            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                            <br />
                            subject:
                            <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                            <br />
                            maindata:
                            <asp:TextBox ID="maindataTextBox" runat="server" Text='<%# Bind("maindata") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br /><br /></span>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>No New Feed back.</span>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <span style="">name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <br />type:
                            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                            <br />subject:
                            <asp:TextBox ID="subjectTextBox" runat="server" Text='<%# Bind("subject") %>' />
                            <br />maindata:
                            <asp:TextBox ID="maindataTextBox" runat="server" Text='<%# Bind("maindata") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br /><br /></span>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <span style="">name:
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />
                            email:
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                            <br />
                            type:
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                            <br />
                            subject:
                            <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            <br />
                            maindata:
                            <asp:Label ID="maindataLabel" runat="server" Text='<%# Eval("maindata") %>' />
                            <br />
<br /></span>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <span style="">name:
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                            <br />
                            email:
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                            <br />
                            type:
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                            <br />
                            subject:
                            <asp:Label ID="subjectLabel" runat="server" Text='<%# Eval("subject") %>' />
                            <br />
                            maindata:
                            <asp:Label ID="maindataLabel" runat="server" Text='<%# Eval("maindata") %>' />
                            <br />
<br /></span>
                        </SelectedItemTemplate>
                    </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:umangpc %>" SelectCommand="SELECT [name], [email], [type], [subject], [maindata] FROM [feedback]"></asp:SqlDataSource>

                </td>
            </tr>
        </table>
        <div class="button">
        <asp:Button ID="Button1" runat="server" Text="Clear All"  />
        <asp:Button ID="Button2" runat="server" Text="Add temp Data" />
        </div>
        </div>
     </div>
</asp:Content>
