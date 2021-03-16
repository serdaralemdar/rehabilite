<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="doktorekle.aspx.cs" Inherits="doktorekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <div class="page-header">
    <h1>Doktor Ekleme <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>      
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
       

        <div class="col-xs-12">
          
            <asp:Button ID="doc_ekle" CssClass="btn btn-success"  runat="server" Text="Ekle" OnClick="doc_ekle_Click" />
               

        </div>




    </div>














</asp:Content>

