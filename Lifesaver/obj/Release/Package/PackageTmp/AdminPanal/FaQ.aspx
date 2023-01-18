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

                    <asp:ListView ID="ListView1" runat="server">

                        <EmptyDataTemplate> <h4><center>No Data</center></h4></EmptyDataTemplate>

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

                    </asp:ListView>
        <div class="button">
        <asp:Button ID="Button1" runat="server" Text="Clear All"  />
        <asp:Button ID="Button2" runat="server" Text="Add temp Data" />
        </div>
        </div>
     </div>
</asp:Content>
