<%@ Page Title="Lutfen Giris Yapiniz" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="container">

    <div class="row">
		<div class="span12">
			<form class="form-horizontal" action='' method="POST">
			  <fieldset>
			    <div id="legend">
			      </div>
			      <legend class="">Giriş&nbsp;&nbsp;
                      <asp:Label ID="kontrolyap" runat="server" ></asp:Label> <br /><br />
                  </legend>
			    </div>
			    <div class="control-group">
		
			      <label class="control-label"  for="username">Kullanıcı Adı</label>
			      <div class="controls">
    <asp:TextBox ID="kadi" runat="server" CssClass="form-control"></asp:TextBox>
			      </div>
			    </div>
			    <div class="control-group">
		
			      <label class="control-label" for="password">Şifre</label>
			      <div class="controls">
        <asp:TextBox ID="sifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
			      </div>
			    </div>
                  <br />
			    <div class="control-group">
			      <div class="controls">
			       <asp:Button ID="girisyap" runat="server" Text="Giriş" CssClass="btn btn-primary" OnClick="girisyap_Click" />
			      </div>
			    </div>
			  </fieldset>
			</form>
		</div>
	</div>

</asp:Content>

