<%@ Page Title="İlaç Ekleme" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ilacekle.aspx.cs" Inherits="ilacekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <div class="page-header">
    <h1>İlaç Ekleme <asp:Label ID="mesaj" runat="server" Text=""></asp:Label></h1>      
  </div>
    <div class="row">
        
        <div class="col-xs-6">
          <div class="form-group form-inline">
              <div class="col-xs-4">
            <label for="ilacadi">İlaç Adı:</label></div>
            <asp:TextBox ID="ilacadi" CssClass="form-control" runat="server"></asp:TextBox>
              </div>    
        </div>
            
        <div class="col-xs-6">
            <div class="form-group form-inline">
                <div class="col-xs-4">
            <label for="ilacstok">İlaç Stoğu :</label></div>
            <asp:TextBox ID="ilacstok" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
       

        <div class="col-xs-12">
          
            <asp:Button ID="ilaceklebtn" CssClass="btn btn-success"  runat="server" Text="Ekle" OnClick="ilaceklebtn_Click" />
               

        </div>




    </div>


</asp:Content>

