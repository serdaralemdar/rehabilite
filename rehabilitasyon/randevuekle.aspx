<%@ Page Title="Randevu Ekleme" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="randevuekle.aspx.cs" Inherits="randevuekle" %>

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
    <h1>Randevu Ekleme&nbsp;&nbsp;
        <asp:Label ID="mesaj" runat="server" Text=""></asp:Label>
          </h1>      
  </div>
    <div class="row">
        
      
            
     


        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_hasta_id">Hasta Adı :</label></div>
             <asp:DropDownList ID="randevu_hasta_id" CssClass="ui search dropdown" style="font-size: 12px;" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_doktor_id">Doktor Adı :</label></div>
             <asp:DropDownList ID="randevu_doktor_id" CssClass="ui search dropdown" style="font-size: 12px;" runat="server" AutoPostBack="True" OnSelectedIndexChanged="randevu_doktor_id_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


         <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_tarih">Randevu Tarih :</label></div>
               <asp:TextBox ID="randevu_tarih" CssClass="form-control" runat="server" TextMode="Date" Visible="False" AutoPostBack="True" OnTextChanged="randevu_tarih_TextChanged"></asp:TextBox>
                </div>
            </div>

            <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_saat">Randevu Saat :</label></div>
             <asp:DropDownList ID="randevu_saat" CssClass="form-control" runat="server" Visible="False"></asp:DropDownList>
                </div>
            </div>


      

        <div class="col-xs-12">
          
            <asp:Button ID="randevu_ekle" CssClass="btn btn-success"  runat="server" Text="Ekle" OnClick="randevu_ekle_Click" />
               

        </div>
      




    </div>
</asp:Content>

