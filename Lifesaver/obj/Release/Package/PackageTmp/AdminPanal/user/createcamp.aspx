<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/user.master" CodeBehind="createcamp.aspx.vb" Inherits="Lifesaver.createcamp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
    <link href="../../style/Bloodbank/addcampaign.css" rel="stylesheet" />
        <style>.cc {
    font-weight: 700;
    color: #F3525A;
    
}</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<center>
    <div class="block1">
    <div class="heading"><h2><i>Create Campaign</i></h2></div>
        
    <table>
<tr>
<td>Name</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="design"></asp:TextBox>
       </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campaign Name Is Required." ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Address</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="design" TextMode="MultiLine"></asp:TextBox>
     </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campaign Address Is Required." ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Pincode</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server"  CssClass="design" TextMode="Number"></asp:TextBox>
    </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campaign Address Pincode Is Required." ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Mobile Numnber</td>
<td>
    <asp:TextBox ID="TextBox4" runat="server"  CssClass="design"></asp:TextBox>
      </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campaign Mobile Number Is Required." ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
</tr>
<tr>
<td>Tag Line</td>
<td>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="design"></asp:TextBox>
                        </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campaign Tag Line Is Required. You can put - here" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>

</td>
</tr>
<tr>
<td>Date</td>
<td>
    <asp:TextBox ID="TextBox6" runat="server"  CssClass="design" TextMode="Date" ></asp:TextBox>  To <asp:TextBox ID="TextBox7" runat="server"  CssClass="design" TextMode="Date" ></asp:TextBox>
           </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campaign Date Is Required." ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>Time</td>
<td>
    <asp:TextBox ID="TextBox8" runat="server"  CssClass="design" TextMode="Time"></asp:TextBox>  To <asp:TextBox ID="TextBox9" runat="server"  CssClass="design" TextMode="Time" ></asp:TextBox>
    </br><asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator8" runat="server" ErrorMessage="Campaign time Is Required." ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
    
</td>
</tr>

<tr><td></td>
    <td>
        <asp:Button CssClass="btn" ID="Button1" runat="server" Text="Create Campaign" Height="40px" 
        Width="200px" /></td>
</tr>
    </table></div></center>
</asp:Content>
