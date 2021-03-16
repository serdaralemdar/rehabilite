<%@ Page Title="Hasta İlac Duzenleme" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hilacduzenle.aspx.cs" Inherits="hilacduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    
        <div class="row">
      

   
    <h1>Hasta İlaç Düzenleme  <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>    
       
    

                 <div class="col-xs-6">
               <div class="form-group form-inline">
                  <div class="col-xs-4"> 
            <label for="duzenle_hasta_id">Hasta Adı :</label></div>
            <asp:TextBox ID="duzenle_hasta_id" CssClass="form-control"  runat="server" ReadOnly></asp:TextBox>
             </div>
          </div>

        <div class="col-xs-6">
             <div class="form-group form-inline">
                   <div class="col-xs-4"> 
            <label for="duzenle_ilac_id">İlaç Adı :</label></div>
            <asp:DropDownList ID="duzenle_ilac_id" CssClass="form-control" runat="server"></asp:DropDownList>
             </div>
                </div>

            <div class="col-xs-6">
               <div class="form-group form-inline">
                   <div class="col-xs-4">
            <label for="duzenle_ilac_baslama">Başlama Tarihi :</label></div>
            <asp:TextBox ID="duzenle_ilac_baslama" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
             </div>
               </div>

      <div class="col-xs-6">
               <div class="form-group form-inline">
             <div class="col-xs-4">
            <label for="duzenle_ilac_bitis">Bitiş Tarihi :</label></div>
            <asp:TextBox ID="duzenle_ilac_bitis" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
             </div>
               </div>

                     <div class="col-xs-6">
        <div class="form-group form-inline">
            <div class="col-xs-4">
            <label for="duzenle_ilac_sikligi">Kullanma Sikliği :</label></div>
            <asp:TextBox ID="duzenle_ilac_sikligi" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
           </div>

                <div class="col-xs-6">
               <div class="form-group form-inline">
                  <div class="col-xs-4">
            <label for="duzenle_ilac_sure">Kullanma Süresi :</label></div>
            <asp:TextBox ID="duzenle_ilac_sure" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
                </div>

                 <div class="col-xs-6">
               <div class="form-group form-inline">
                  <div class="col-xs-4">
            <label for="duzenle_ilac_sure">Kullanma Durumu :</label></div>
            <asp:DropDownList ID="duzenle_ilac_durum" CssClass="form-control" runat="server">
                <asp:ListItem Value="1">Kullanıyor</asp:ListItem>
                <asp:ListItem Value="2">Tamamlandı</asp:ListItem>
                   </asp:DropDownList>
             </div>
                </div>


                    <div class="col-xs-12">
          
            <asp:Button ID="hilac_duzenle" CssClass="btn btn-success"  runat="server" Text="Düzenle" OnClick="hilac_duzenle_Click" />  
               

        </div>




    </div>







</asp:Content>

