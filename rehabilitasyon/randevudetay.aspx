<%@ Page Title="Randevu Detaylari" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="randevudetay.aspx.cs" Inherits="randevudetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    
      <div class="page-header">
    <h1>Randevu Düzenleme&nbsp;&nbsp;
        <asp:Label ID="mesaj" runat="server" Text=""></asp:Label>
          </h1>      
  </div>
    <div class="row">
        
      
            
     


        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_hasta_id">Hasta Adı :</label></div>
             <asp:TextBox ID="randevu_hasta_id" CssClass="form-control" runat="server" readonly></asp:TextBox>
                </div>
            </div>

            <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_doktor_id">Doktor Adı :</label></div>
             <asp:TextBox ID="randevu_doktor_id" CssClass="form-control" runat="server" readonly></asp:TextBox>
                </div>
            </div>


         <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_tarih">Randevu Tarih :</label></div>
               <asp:TextBox ID="randevu_tarih" CssClass="form-control" runat="server" TextMode="Date" ReadOnly></asp:TextBox>
                </div>
            </div>

            <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_saat">Randevu Saat :</label></div>
             <asp:TextBox ID="randevu_saat" CssClass="form-control" runat="server" readonly></asp:TextBox>
                </div>
            </div>

        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_teshis">Randevu Teşhisi :</label></div>
               <asp:TextBox ID="randevu_teshis" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

            <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_durum">Randevu Durumu :</label></div>
             <asp:DropDownList ID="randevu_durum" CssClass="form-control" runat="server">
                 <asp:ListItem Value="1">Aktif</asp:ListItem>
                 <asp:ListItem Value="2">Tamamlandı</asp:ListItem>
                 <asp:ListItem Value="3">Kontrol</asp:ListItem>
                 <asp:ListItem Value="4">İptal Edildi</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>


      

        <div class="col-xs-12">
          
            <asp:Button ID="randevu_duzenle" CssClass="btn btn-success"  runat="server" Text="Düzenle" OnClick="randevu_duzenle_Click"/>
               

        </div>
      




    </div>





</asp:Content>

