<%@ Page Title="Ziyaretçi Ekle" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ziyaretciekle.aspx.cs" Inherits="ziyaretciekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

  <link rel="stylesheet" type="text/css" href="Scripts/dropdown/reset.css">
  <link rel="stylesheet" type="text/css" href="Scripts/dropdown/dropdown.css">
  <link rel="stylesheet" type="text/css" href="Scripts/dropdown/transition.css">
  <script src="Scripts/dropdown/jquery.min.js"></script>
  <script type="text/javascript" src="Scripts/dropdown/transition.js"></script>
  <script type="text/javascript" src="Scripts/dropdown/dropdown.js"></script>
 
      <script>
          $(document)
              .ready(function () {
                  $('.ui.dropdown').dropdown();
              })
              ;
  </script>


      <div class="page-header">
    <h1>Ziyaretçi Ekleme <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>      
  </div>
    <div class="row">
        
        <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
            <label for="ziyaretci_adsoyad">Ziyaretçi Ad Soyad:</label></div>
            <asp:TextBox ID="ziyaretci_adsoyad" CssClass="form-control" runat="server"></asp:TextBox>
              </div>    
        </div>
            
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ziyaretci_telefon">Ziyaretçi Telefon :</label></div>
            <asp:TextBox ID="ziyaretci_telefon" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ziyaretci_yakinlik">Ziyaretçi Yakınlık :</label></div>
            <asp:TextBox ID="ziyaretci_yakinlik" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ziyaret_edilen">Ziyaret Edilen :</label></div>
             <asp:DropDownList ID="ziyaret_edilen" CssClass="ui search dropdown" style="font-size: 12px;" runat="server"></asp:DropDownList>
                </div>
            </div>
         <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ziyaretci_adres">Ziyaretçi Adres :</label></div>
               <asp:TextBox ID="ziyaretci_adres" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ziyaretci_email">Ziyaretçi Email :</label></div>
               <asp:TextBox ID="ziyaretci_email" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

        <div class="col-xs-12">
          
            <asp:Button ID="ziyaretci_ekle" CssClass="btn btn-success"  runat="server" Text="Ekle" OnClick="ziyaretci_ekle_Click" />
               

        </div>




    </div>
</asp:Content>

