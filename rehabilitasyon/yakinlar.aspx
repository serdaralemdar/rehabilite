<%@ Page Title="Yakinlar" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="yakinlar.aspx.cs" Inherits="yakinlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

      <br />
    <br />
    <br />
          <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/datatable.js" type="text/javascript"></script>
    <script src="Scripts/datatables.min.js" type="text/javascript"></script>
    <script src="Scripts/datatables.bootstrap.js" type="text/javascript"></script> 
      <script src="Scripts/table-datatables-buttons.min.js" type="text/javascript"></script>


 <div class="portlet light bordered">
   <div class="portlet-title">

   
    <h1>Yakın Listesi <asp:Button ID="yakinekleme" runat="server" CssClass="btn btn-primary" Text="Yakın Ekle" PostBackUrl="~/yakinekle.aspx" /> </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="ylistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    <th>Yakın ID</th>
                    <th>Yakın Ad Soyad</th>
                    <th>Yakın Hasta</th>
                    <th>Yakınlık</th>
                    <th>Telefon</th>
                    <th>Detaylar</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="yakin_id" runat="server" Text='<%# Eval("yakin_id") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="yakin_adsoyad" runat="server" Text='<%# Eval("yakin_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="yakin_hastaadsoyad" runat="server" Text='<%# Eval("hasta_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="yakin_yakinlik" runat="server" Text='<%# Eval("yakin_yakinlik") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="yakin_telefon" runat="server" Text='<%# Eval("yakin_telefon") %>'></asp:Label>
                </td>
                <td>
                     <a href="yakinduzenle.aspx?id=<%# Eval("yakin_id") %>">
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

