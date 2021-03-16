<%@ Page Title="Ziyaretci Listesi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ziyaretciler.aspx.cs" Inherits="Account_ziyaretciler" %>

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

   
    <h1>Ziyaretçi Listesi <asp:Button ID="ziyaretciekle" runat="server" CssClass="btn btn-primary" Text="Ziyaretçi Ekle" PostBackUrl="~/ziyaretciekle.aspx" /> </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="zlistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    <th>Ziyaretçi ID</th>
                    <th>Ziyaretçi Adı</th>
                    <th>Ziyaret Edilen</th>
                    <th>Ziyaretçi Yakınlık</th>
                    <th>Başlama Zamanı</th>
                    <th>Ziyareti Bitir</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="ziyaretci_id" runat="server" Text='<%# Eval("ziyaretci_id") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ziyaretci_adi" runat="server" Text='<%# Eval("ziyaretci_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ziyaret_edilen" runat="server" Text='<%# Eval("hasta_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ziyaretçi_yakınlık" runat="server" Text='<%# Eval("ziyaretci_yakinlik") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="baslama_zamani" runat="server" Text='<%# Eval("ziyaretci_baslama") %>'></asp:Label>
                </td>
                <td>
                    <asp:Button ID="ziyaret_bitir" CssClass="btn btn-danger" runat="server"  Text="Bitir" OnClick="ziyaret_bitir_Click" CommandArgument='<%# Eval("ziyaretci_id") %>' />
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

