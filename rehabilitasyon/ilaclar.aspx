<%@ Page Title="İlaclar" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ilaclar.aspx.cs" Inherits="ilaclar" %>

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

   
    <h1>İlaç Listesi <asp:Button ID="ilacekleme" runat="server" CssClass="btn btn-primary" Text="İlaç Ekle" PostBackUrl="~/ilacekle.aspx" /> </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="ilaclistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    <th>İlaç ID</th>
                    <th>İlaç Adı</th>
                    <th>İlaç Stoğu</th>
                    <th>Düzenle</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="ilac_id" runat="server" Text='<%# Eval("ilac_id") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ilac_adi" runat="server" Text='<%# Eval("ilac_adi") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="ilac_stok" runat="server" Text='<%# Eval("ilac_stok") %>'></asp:Label>
                </td>

              <td>

                   <a href="ilacduzenle.aspx?id=<%# Eval("ilac_id") %>">
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

