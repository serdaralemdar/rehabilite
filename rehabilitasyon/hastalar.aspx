<%@ Page Title="Hastalar" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hastalar.aspx.cs" Inherits="hastalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <br />
     <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/datatable.js" type="text/javascript"></script>
    <script src="Scripts/datatables.min.js" type="text/javascript"></script>
    <script src="Scripts/datatables.bootstrap.js" type="text/javascript"></script> 
      <script src="Scripts/table-datatables-buttons.min.js" type="text/javascript"></script>
  

      
    <br />
    <br />

 <div class="portlet light bordered">
   <div class="portlet-title">

   
    <h1>Hasta Listesi <asp:Button ID="hekleme" runat="server" CssClass="btn btn-primary" Text="Hasta Kaydı" PostBackUrl="~/hastakayit.aspx" /> </h1>    
       </div>
 <div class="portlet-body">
    <asp:Repeater ID="hlistesi" runat="server">

        <HeaderTemplate>
            <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                <thead>
                <tr>
                    <th>Hasta ID</th>
                    <th>Kimlik Numarası</th>
                    <th>Hasta Ad</th>
                    <th>Hasta Cinsiyet</th>
                    <th>Hasta Oda No</th>
                    <th>Düzenle/Görüntüle</th>

                </tr>
                    </thead>
        </HeaderTemplate>




        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label ID="hasta_id" runat="server" Text='<%# Eval("hasta_id") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="hasta_kimlik" runat="server" Text='<%# Eval("hasta_kimlik") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="hasta_ad" runat="server" Text='<%# Eval("hasta_adsoyad") %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="hasta_cinsiyet" runat="server" Text='<%# (Boolean.Parse(Eval("hasta_cinsiyet").ToString())) ? "Erkek" : "Kadın" %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="hasta_odano" runat="server" Text='<%# Eval("hasta_odano") %>'></asp:Label>
                </td>
                <td>

                   <a href="hastadetay.aspx?id=<%# Eval("hasta_id") %>">
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

