<%@ Page Title="Hastaya Ilac Ekle" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hilacekle.aspx.cs" Inherits="hilacekle" %>

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

        <div class="row">
      

   
    <h1>Hastaya Yeni İlaç Ekle  <asp:Label ID="yanit" runat="server" Text=""></asp:Label></h1>    
       
    

                 <div class="col-xs-6">
               <div class="form-group form-inline">
                  <div class="col-xs-4"> 
            <label for="ekle_hasta_id">Hasta Adı :</label></div>
            <asp:DropDownList ID="ekle_hasta_id" CssClass="ui search dropdown" style="font-size: 12px;" runat="server"></asp:DropDownList>
             </div>
          </div>

        <div class="col-xs-6">
             <div class="form-group form-inline">
                   <div class="col-xs-4"> 
            <label for="ekle_ilac_id">İlaç Adı :</label></div>
            <asp:DropDownList ID="ekle_ilac_id" CssClass="ui search dropdown" style="font-size: 12px;" runat="server"></asp:DropDownList>
             </div>
                </div>

            <div class="col-xs-6">
               <div class="form-group form-inline">
                   <div class="col-xs-4">
            <label for="ekle_ilac_baslama">Başlama Tarihi :</label></div>
            <asp:TextBox ID="ekle_ilac_baslama" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
             </div>
               </div>

      <div class="col-xs-6">
               <div class="form-group form-inline">
             <div class="col-xs-4">
            <label for="ekle_ilac_bitis">Bitiş Tarihi :</label></div>
            <asp:TextBox ID="ekle_ilac_bitis" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
             </div>
               </div>

                     <div class="col-xs-6">
        <div class="form-group form-inline">
            <div class="col-xs-4">
            <label for="ekle_ilac_sikligi">Kullanma Sikliği :</label></div>
            <asp:TextBox ID="ekle_ilac_sikligi" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
           </div>

                <div class="col-xs-6">
               <div class="form-group form-inline">
                  <div class="col-xs-4">
            <label for="ekle_ilac_sure">Kullanma Süresi :</label></div>
            <asp:TextBox ID="ekle_ilac_sure" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
                </div>


                    <div class="col-xs-12">
          
            <asp:Button ID="hilac_ekle" CssClass="btn btn-success"  runat="server" Text="Ekle" OnClick="hilac_ekle_Click" />
               

        </div>




    </div>



</asp:Content>

