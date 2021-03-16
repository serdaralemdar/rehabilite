<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="doktorlar.aspx.cs" Inherits="doktorlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

       <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/datatable.js" type="text/javascript"></script>
    <script src="Scripts/datatables.min.js" type="text/javascript"></script>
    <script src="Scripts/datatables.bootstrap.js" type="text/javascript"></script> 
      <script src="Scripts/table-datatables-buttons.min.js" type="text/javascript"></script>

    
      
    <br />
    <br />

 <div class="portlet light bordered">
   <div class="portlet-title">

   
    <h1>Doktor Listesi <asp:Button ID="doktorekleme" runat="server" CssClass="btn btn-primary" Text="Doktor Ekle" PostBackUrl="~/doktorekle.aspx" /> </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="doktorlistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    <th>Doktor ID</th>
                    <th>Doktor Adı</th>
                    <th>Doktor Branşı</th>
                    <th>Doktor Durumu</th>
                    <th>Düzenle</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="ilac_id" runat="server" Text='<%# Eval("doc_id") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ilac_adi" runat="server" Text='<%# Eval("doc_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ilac_stok" runat="server" Text='<%# Eval("doc_brans") %>'></asp:Label>
                </td>
                    <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("doc_durum").ToString() == "1" ? "Aktif" : Eval("doc_durum").ToString() == "2" ? "İzinli" : "Pasif" %>'></asp:Label>
                </td>

              <td>

                   <a href="doktorduzenle.aspx?id=<%# Eval("doc_id") %>">
                        <button type="button" class="btn btn-primary">Düzenle</button>
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












</asp:Content>

