﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Bloodbank/master/bbmain.Master" CodeBehind="home.aspx.vb" Inherits="Lifesaver.home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/common/homepage.css" rel="stylesheet" />
    <style type="text/css">
           
        .ahome {
    font-weight: 700;
    color: #F3525A;
}
        @media (min-width: 800px) {
            .card {
                width: 350px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
<div class ="block">
<div class="heading">
<h2><i>Blood Data</i></h2></div>
<div class="cards">
     <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Op.png" />
          </div>          <h3 class="card__apply">
          O+  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/On.png" />
          </div>          <h3 class="card__apply">
          O-  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Ap.png" />
          </div>          <h3 class="card__apply">
          A+  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/An.png" />
          </div>          <h3 class="card__apply">
          A-  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Bp.png" />
          </div>          <h3 class="card__apply">
          B+  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/Bn.png" />
          </div>          <h3 class="card__apply">
          B-  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/ABp.png" />
          </div>          <h3 class="card__apply">
          AB+  Blood 
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/ABn.png" />
          </div>             <h3 class="card__apply">AB-  Blood 
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
        
    <h1 class="card__title"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/appcampaign.svg" />
          </div>          <h3 class="card__apply">
          Available Campaign
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/pancampaign.svg" />
          </div>          <h3 class="card__apply">
          On hold campaign
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/rejcampaign.svg" />
          </div>          <h3 class="card__apply">
          Rejected Campaign
      </h3>
    </div>
         <div class="card card-1">
<div class="image">
        
    <h1 class="card__title"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></h1>
            <img class="cimage" src="../files/campaign.svg" />
          </div>          <h3 class="card__apply">
           Total Campaign
      </h3>
    </div>
    </div>
    </div>
        </div>
</asp:Content>
