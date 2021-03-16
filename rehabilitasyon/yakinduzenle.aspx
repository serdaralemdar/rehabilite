<%@ Page Title="Yakin Duzenleme" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="yakinduzenle.aspx.cs" Inherits="yakinduzenleaspx" %>

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
    <h1>Yakın DÜzenle <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>      
  </div>
    <div class="row">
        
        <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
            <label for="yakin_kimlik">Yakın Kimlik:</label></div>
            <asp:TextBox ID="yakin_kimlik" CssClass="form-control" runat="server" MaxLength="11"></asp:TextBox>
              </div>    
        </div>

        <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
            <label for="yakin_adsoyad">Yakın Ad Soyad:</label></div>
            <asp:TextBox ID="yakin_adsoyad" CssClass="form-control" runat="server"></asp:TextBox>
              </div>    
        </div>
            
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="yakin_telefon">Yakın Telefon :</label></div>
            <asp:TextBox ID="yakin_telefon" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="yakin_yakinlik">Yakınlık :</label></div>
            <asp:TextBox ID="yakin_yakinlik" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="yakin_hasta">Yakın Hastası :</label></div>
             <asp:DropDownList ID="yakin_hasta" CssClass="ui search dropdown" runat="server"></asp:DropDownList>
                </div>
            </div>
         <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="yakin_adres">Yakın Adres :</label></div>
               <asp:TextBox ID="yakin_adres" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="yakin_email">Yakın Email :</label></div>
               <asp:TextBox ID="yakin_email" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

        <div class="col-xs-12">
          
            <asp:Button ID="yakin_ekle" CssClass="btn btn-success"  runat="server" Text="Düzenle" OnClick="yakin_ekle_Click" />
               
        </div>

    </div>

</asp:Content>

