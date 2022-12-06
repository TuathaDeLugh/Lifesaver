<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="home.aspx.vb" Inherits="Lifesaver.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../style/common/homepage.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class ="block">
<div class="heading">
<h2><i>User Data</i></h2></div>
<div class="cards">
    <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Total Users
      </h3>
    </div>
    <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Users can donate blood
      </h3>
    </div>
    <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Users requested to donate blood
      </h3>
    </div>
    <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Male Users
      </h3>
    </div>
    <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Female users
      </h3>
    </div>
    </div>
    </div>
    <div class ="block">
<div class="heading">
<h2><i>Campaign Data</i></h2></div>
<div class="cards">
     <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Total Campaign
      </h3>
    </div>
     <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Active campaign
      </h3>
    </div>
     <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          want to approve campaign
      </h3>
    </div> 
    <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Avaliable campaign in total Pincode
      </h3>
    </div>
    </div>
    </div>
    <div class ="block">
<div class="heading">
<h2><i>Blood Bank Data</i></h2></div>
<div class="cards">
     <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Total Blood bank
      </h3>
    </div>
             <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          Avaliable Blood Banks In total Pincode
      </h3>
    </div>
     <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          O+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          O- Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          A+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          A- Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          B+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          B- Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          AB+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
    <h1 class="card__title"><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></h1>
          <h3 class="card__apply">
          AB- Avaliable Blood Banks
      </h3>
    
    </div>
    </div>
    </div>
</asp:Content>
