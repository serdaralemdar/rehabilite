<%@ Page Title="Hasta Kayit" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hastakayit.aspx.cs" Inherits="hastakayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
     <div class="page-header">

    <h1>Hastanın Bilgileri  <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>    
       </div>
      <br />
      <br />
    <div class="row">

          <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
         <label for="hasta_kimlik">Kimlik:</label> </div>
            <asp:TextBox ID="hasta_kimlik" CssClass="form-control" runat="server"></asp:TextBox>
           </div>    
        </div>

          <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
    <label for="hasta_adsoyad">Adı Soyadı:</label></div>
                  <asp:TextBox ID="hasta_adsoyad" CssClass="form-control" runat="server"></asp:TextBox>
         </div>    
        </div>
      
   <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
        <label for="hasta_babaad">Baba Adı:</label></div>
        <asp:TextBox ID="hasta_babaad" CssClass="form-control" runat="server"></asp:TextBox>
              </div>
          </div>

           <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
        <label for="hasta_anaad">Ana Adı:</label></div>
         <asp:TextBox ID="hasta_anaad" CssClass="form-control" runat="server"></asp:TextBox>
          </div></div>

         <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
        <label for="hasta_dyeri">Doğum Yeri:</label></div>
         <asp:TextBox ID="hasta_dgeri" CssClass="form-control" runat="server"></asp:TextBox>
          </div></div>
            
         <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
        <label for="hasta_email">Email:</label></div>
                  <asp:TextBox ID="hasta_email" CssClass="form-control" runat="server"></asp:TextBox>

          </div></div>

       <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
       <label for="hasta_telefon">Telefon:</label></div>
            <asp:TextBox ID="hasta_telefon" CssClass="form-control" runat="server"></asp:TextBox>
          </div></div>

            <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
       <label for="hasta_odano">Oda No:</label> </div>
                  <asp:TextBox ID="hasta_odano" CssClass="form-control" runat="server"></asp:TextBox>
          </div></div>
      
             <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
  <label for="hasta_alerji">Alerji:</label></div>
              <asp:TextBox ID="hasta_alerji" CssClass="form-control" runat="server"></asp:TextBox>
          </div></div>

           <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
       <label for="hasta_cinsiyet">Cinsiyet:</label></div>
            <asp:DropDownList ID="hasta_cinsiyet" CssClass="form-control" runat="server">
            <asp:ListItem Value="True">Erkek</asp:ListItem>
            <asp:ListItem Value="False">Kadın</asp:ListItem>
            </asp:DropDownList>
              </div></div>

                <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
    <label for="hasta_sigara">Sigara:</label></div>
        <asp:DropDownList ID="hasta_sigara" CssClass="form-control" runat="server">
            <asp:ListItem Value="True">Var</asp:ListItem>
            <asp:ListItem Value="False" Selected="True">Yok</asp:ListItem>
            </asp:DropDownList>
          </div></div>
        
       <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
               <label for="hasta_alkol">Alkol:</label></div>
             <asp:DropDownList ID="hasta_alkol" CssClass="form-control" runat="server">
            <asp:ListItem Value="True">Var</asp:ListItem>
            <asp:ListItem Value="False" Selected="True">Yok</asp:ListItem>
            </asp:DropDownList>
          </div></div>

         <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
        <label for="hasta_diyabet">Diyabet:</label></div>
            <asp:DropDownList ID="hasta_diyabet" CssClass="form-control" runat="server">
            <asp:ListItem Value="True">Var</asp:ListItem>
            <asp:ListItem Value="False" Selected="True">Yok</asp:ListItem>
            </asp:DropDownList>
          </div></div>

         <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
        <label for="hasta_hiv">HIV:</label></div>
          <asp:DropDownList ID="hasta_hiv" CssClass="form-control" runat="server">
            <asp:ListItem Value="True">Var</asp:ListItem>
            <asp:ListItem Value="False" Selected="True">Yok</asp:ListItem>
            </asp:DropDownList>
          </div></div>
                
         <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
               <label for="hasta_hepatit">Hepatit:</label></div>
                 <asp:DropDownList ID="hasta_hepatit" CssClass="form-control" runat="server">
            <asp:ListItem Selected="True">Hepatit Negatif</asp:ListItem>
            <asp:ListItem>HCV +</asp:ListItem>
                    <asp:ListItem>HBS Ag +</asp:ListItem>
                    <asp:ListItem>HCV + ve HBS Ag +</asp:ListItem>
            </asp:DropDownList>
                </div></div>

              <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
      <label for="hasta_SGK">SGK:</label></div>
          <asp:DropDownList ID="hasta_SGK" CssClass="form-control" runat="server">
            <asp:ListItem>SGK</asp:ListItem>
            </asp:DropDownList>
          </div></div>

             <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
          <label for="hasta_kangrubu">Kan Grubu:</label></div>
             <asp:DropDownList ID="hasta_kangrubu" CssClass="form-control" runat="server">
            <asp:ListItem>A RH +</asp:ListItem>
            <asp:ListItem>A RH -</asp:ListItem>
              <asp:ListItem>B RH +</asp:ListItem>
              <asp:ListItem>B RH -</asp:ListItem>
              <asp:ListItem>AB RH +</asp:ListItem>
              <asp:ListItem>AB RH -</asp:ListItem>
              <asp:ListItem>0 RH -</asp:ListItem>
              <asp:ListItem>0 RH +</asp:ListItem>
            </asp:DropDownList>
          </div></div>
      
  <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
       <label for="hasta_adres">Adres:</label></div>
        <asp:TextBox ID="hasta_adres" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
          </div></div>

             <div class="col-xs-6">
          
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />

              </div>
        
      
    

              </div>



  
</asp:Content>

