<%@ Page Title="İlacı Kullanan Hastalar" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ilachastalar.aspx.cs" Inherits="ilachastalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    
      <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/datatable.js" type="text/javascript"></script>
    <script src="Scripts/datatables.min.js" type="text/javascript"></script>
    <script src="Scripts/datatables.bootstrap.js" type="text/javascript"></script> 
      <script src="Scripts/table-datatables-buttons.min.js" type="text/javascript"></script>

    
      
    <br />
    <br />

          <div class="page-header">
    <h1><asp:Label ID="ilacadi" runat="server" Text=""></asp:Label> ilacini kullanan hastalar</h1>      
  </div>

    <div class"row">
               <div class="col-xs-4">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ilac_id">İlaç Adı :</label></div>
             <asp:DropDownList ID="ilac_id" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ilac_id_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


    </div>


 <div class="portlet light bordered">
   <div class="portlet-title">

   
    <h1>İlaç Kullanan Hastalar </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="ilachlistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    
                    <th>İlaç Adı</th>
                    <th>Hasta Adı</th>
                    <th>Başlama Tarihi</th>
                    <th>Bitiş Tarihi</th>
                    <th>Durum</th>
                    <th>Düzenle</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                
                <td>
                    <asp:Label ID="ilac_adi" runat="server" Text='<%# Eval("ilac_adi") %>'></asp:Label>
                </td>
                 <td>
                    <asp:Label ID="hasta_adsoyad" runat="server" Text='<%# Eval("hasta_adsoyad") %>'></asp:Label>
                </td>
                 <td>
                    <asp:Label ID="hilac_baslamat" runat="server" Text='<%# Eval("hilac_baslamat", "{0:d}") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="hilac_bitist" runat="server" Text='<%# Eval("hilac_bitist", "{0:d}") %>'></asp:Label>
                </td>
                 <td>
                    <asp:Label ID="ilac_stok" runat="server" Text='<%# Eval("hilac_durum").ToString() == "1" ? "Kullanıyor" : "Tamamlandı" %>'></asp:Label>
                </td>

              <td>

                   <a href="hilacduzenle.aspx?id=<%# Eval("hilac_hastaid") %>">
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

