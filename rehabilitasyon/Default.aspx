<%@ Page Title="Ana Sayfa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Rehabilitasyon Merkezi Otomasyonu</h1>
        <p class="lead">Projenin geliştirilme aşamasında çok büyük yardımları olan <a href="https://stackoverflow.com/" target="_blank">Stackoverflow</a>'a Çok Teşekkürler..</p>
        <p>Proje yapımında kullanılan tüm gereçler aşağıdadır.</p>
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Tablolama İşlemi</h2>
            <p>
               Panoya kopyalama,Excele dökme gibi ve tablo listemesi javascript ile tamamlanmıştır.
            </p>
 
        </div>
        <div class="col-md-4">
            <h2>Kullanılan Kütüphaneler</h2>
            <p>
                Klasik kütüphaneler haricinde, System.Data.SqlClient, using System.IO, System.Linq, System.Collections kütüphaneleri kullanılmıştır. 
            </p>
  
        </div>
        <div class="col-md-4">
            <h2>Veritabanı ve SQL Server</h2>
            <p>
                Sql Server 2016 ve Sql Server Management Studio ile geliştirilmiştir. Veritabanı tabloları birbiri ile uyumlu ve şifremeler md5 ile yapılmıştır.
            </p>
 
        </div>
    </div>
</asp:Content>
