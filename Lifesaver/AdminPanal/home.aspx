<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/AdminPanal/master/main.Master" CodeBehind="home.aspx.vb" Inherits="Lifesaver.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../style/common/homepage.css" rel="stylesheet" type="text/css" />
    <style>
        .ahome {
    font-weight: 700;
    color: #F3525A;
}
        @media (min-width: 1200px) {
            .card {
                width: 260px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="content">
<div class ="block">
<div class="heading">
<h2><i>User Data</i></h2></div>
<div class="cards">
    <div class="card-user card ">
        <div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/user.png" />
          </div>
            <h3 class="card__apply">
              
          Total Users
      </h3>
    </div>
    <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/approve.png" />
          </div>          <h3 class="card__apply">
          Users can donate blood
      </h3>
    </div>
    <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/wanado.png" />
          </div>          <h3 class="card__apply">
          Users requested to donate blood
      </h3>
    </div>
    <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/man.png" />
          </div>          <h3 class="card__apply">
          Male Users
      </h3>
    </div>
    <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/female.png" />
          </div>          <h3 class="card__apply">
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
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/campaign.svg" />
          </div>          <h3 class="card__apply">
          Total Campaign
      </h3>
    </div>
     <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/appcampaign.svg" />
          </div>          <h3 class="card__apply">
          Active campaign
      </h3>
    </div>
     <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/pancampaign.svg" />
          </div>          <h3 class="card__apply">
          want to approve campaign
      </h3>
    </div> 
    <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/location.png" />
          </div>          <h3 class="card__apply">
          Covered Pincode 
      </h3>
    </div>
    </div>
    </div>
    <div class ="block">
<div class="heading">
<h2><i>Blood Bank Data</i></h2></div>
<div class="cards">
     <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/blood-bank.png" />
          </div>          <h3 class="card__apply">
          Total active Blood bank
      </h3>
    </div>
             <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/bbgps.png" />
          </div>          <h3 class="card__apply">
          Covered Pincode By B.B.
      </h3>
    </div>
     <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Op.png" />
          </div>          <h3 class="card__apply">
          O+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/On.png" />
          </div>          <h3 class="card__apply">
          O- Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Ap.png" />
          </div>          <h3 class="card__apply">
          A+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/An.png" />
          </div>          <h3 class="card__apply">
          A- Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Bp.png" />
          </div>          <h3 class="card__apply">
          B+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Bn.png" />
          </div>          <h3 class="card__apply">
          B- Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/ABp.png" />
          </div>          <h3 class="card__apply">
          AB+ Avaliable Blood Banks
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/ABn.png" />
          </div>          <h3 class="card__apply">
          AB- Avaliable Blood Banks
      </h3>
    
    </div>
    </div>
    </div>
    </div>
</asp:Content>
