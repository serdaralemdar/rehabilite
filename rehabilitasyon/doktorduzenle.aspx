<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="doktorduzenle.aspx.cs" Inherits="doktorduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <div class="page-header">
    <h1>Doktor Düzenleme <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>      
  </div>
    <div class="row">
        
        <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
            <label for="doc_adsoyad">Doktor AdSoyad:</label></div>
            <asp:TextBox ID="doc_adsoyad" CssClass="form-control" runat="server"></asp:TextBox>
              </div>    
        </div>
            
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="doc_brans">Doktor Branşı :</label></div>
            <asp:TextBox ID="doc_brans" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

                <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="doc_durum">Doktor Branşı :</label></div>
            <asp:DropDownList ID="doc_durum" CssClass="form-control" runat="server">
                <asp:ListItem Value="1">Aktif</asp:ListItem>
                <asp:ListItem Value="2">İzinli</asp:ListItem>
                <asp:ListItem Value="3">Pasif</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>
       

        <div class="col-xs-12">
          
            <asp:Button ID="doc_duzenle" CssClass="btn btn-success"  runat="server" Text="Düzenle" OnClick="doc_duzenle_Click" />
               

        </div>



</div>
</asp:Content>

