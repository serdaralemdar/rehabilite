<%@ Page Title="Randevular" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="randevular.aspx.cs" Inherits="randevular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

       <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/datatable.js" type="text/javascript"></script>
    <script src="Scripts/datatables.min.js" type="text/javascript"></script>
    <script src="Scripts/datatables.bootstrap.js" type="text/javascript"></script> 
      <script src="Scripts/table-datatables-buttons.min.js" type="text/javascript"></script>

        <br />
    <br />

    <div class="row">
                <div class="col-xs-4">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_ara_doktor">Doktor Adı :</label></div>
             <asp:DropDownList ID="randevu_ara_doktor" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>
             <div class="col-xs-4">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_ara_tarih">Tarih :</label></div>
                <asp:TextBox ID="randevu_ara_tarih" runat="server" CssClass="form-control" required AutoPostBack="False" TextMode="Date"></asp:TextBox>
                </div>
            </div>
             <div class="col-xs-4">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="randevu_ara_durum">Durum :</label></div>
             <asp:DropDownList ID="randevu_ara_durum" CssClass="form-control" runat="server">
                 <asp:ListItem Selected="True" Value="0">Durum Seçiniz</asp:ListItem>
                 <asp:ListItem Value="1">Aktif</asp:ListItem>
                 <asp:ListItem Value="2">Tamamlandı</asp:ListItem>
                 <asp:ListItem Value="3">Kontrol</asp:ListItem>
                 <asp:ListItem Value="4">İptal Edildi</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>
    </div>
    
        <div class="col-xs-12">
          
            <asp:Button ID="ara" CssClass="btn btn-success"  runat="server" Text="Ara" OnClick="ara_Click" />
               

        </div>
        <br />
    <br />
      <br />

 <div class="portlet light bordered">
   <div class="portlet-title">

   
    <h1>Randevu Listesi <asp:Button ID="randevuekle" runat="server" CssClass="btn btn-primary" Text="Randevu Ekle" PostBackUrl="~/randevuekle.aspx" formnovalidate="formnovalidate" /> </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="randevulistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    <th>Randevu ID</th>
                     <th>Hasta Adı</th>
                    <th>Doktor Adı</th>
                    <th>Tarih & Saat</th>
                    <th>Durum</th>
                    <th>İşlem</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="randevu_id" runat="server" Text='<%# Eval("randevu_id") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="hasta_adsoyad" runat="server" Text='<%# Eval("hasta_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="doc_adsoyad" runat="server" Text='<%# Eval("doc_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="randevu_tarih" runat="server" Text='<%# Eval("randevu_tarih", "{0:d}") + " " + Eval("randevu_saat") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="randevu_durum" runat="server" Text='<%# Eval("randevu_durum").ToString() == "1" ? "Aktif" : Eval("randevu_durum").ToString() == "2" ? "Tamamlandı" : Eval("randevu_durum").ToString() == "3" ? "Kontrol" : "İptal Edildi" %>'></asp:Label>
                </td>
                

              <td>

                   <a href="randevudetay.aspx?id=<%# Eval("randevu_id") %>">
                        <button type="button" class="btn btn-primary">Detay</button>
                            </a>
                </td>
            </tr>
           
        </ItemTemplate>
                <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
     </div>
     </div>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>






</asp:Content>

