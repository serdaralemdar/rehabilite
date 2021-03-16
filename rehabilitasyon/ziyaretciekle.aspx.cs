using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ziyaretciekle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlCommand hastacek = new SqlCommand("SELECT hasta_id,hasta_adsoyad FROM tbl_hastalar", bgl.baglanti());
            SqlDataReader oku = hastacek.ExecuteReader();
            ziyaret_edilen.DataSource = oku;
            ziyaret_edilen.DataTextField = "hasta_adsoyad";
            ziyaret_edilen.DataValueField = "hasta_id";
            ziyaret_edilen.DataBind();
            ziyaret_edilen.Items.Insert(0, new ListItem("Hasta Seçin", "0"));
            bgl.baglanti().Close();

        }
  

    }

    protected void ziyaretci_ekle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand komut = new SqlCommand("INSERT INTO tbl_ziyaretciler (ziyaretci_adsoyad,ziyaretci_telefon,ziyaretci_adres,ziyaretci_email,ziyaretci_yakinlik,ziyaretci_hastaid) VALUES (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", ziyaretci_adsoyad.Text);
            komut.Parameters.AddWithValue("@p2", ziyaretci_telefon.Text);
            komut.Parameters.AddWithValue("@p3", ziyaretci_adres.Text);
            komut.Parameters.AddWithValue("@p4", ziyaretci_email.Text);
            komut.Parameters.AddWithValue("@p5", ziyaretci_yakinlik.Text);
            komut.Parameters.AddWithValue("@p6", ziyaret_edilen.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        catch (Exception hata)
        {
            mesaj.CssClass = "alert alert-danger";
            mesaj.Text = "Ekleme sırasında hata oluştu. Hata : " + hata.Message;
            return;
        }
        mesaj.CssClass = "alert alert-success";
        mesaj.Text = "Ekleme başarılı.";
    }
}