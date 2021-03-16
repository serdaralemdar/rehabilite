using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yakinekle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
            {
            SqlCommand hastacek = new SqlCommand("SELECT hasta_id,hasta_adsoyad FROM tbl_hastalar", bgl.baglanti());
            SqlDataReader oku = hastacek.ExecuteReader();
            yakin_hasta.DataSource = oku;
            yakin_hasta.DataTextField = "hasta_adsoyad";
            yakin_hasta.DataValueField = "hasta_id";
            yakin_hasta.DataBind();
            yakin_hasta.Items.Insert(0, new ListItem("Hasta Seçin", "0"));
            bgl.baglanti().Close();

        }

    }

    protected void yakin_ekle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO tbl_yakinlar (yakin_adsoyad,yakin_hastaid,yakin_yakinlik,yakin_kimlik,yakin_telefon,yakin_email,yakin_adres) VALUES (@p1,@p2,@p3,@p4,@p5,@p6,@p7)", bgl.baglanti());
            ekle.Parameters.AddWithValue("@p1", yakin_adsoyad.Text);
            ekle.Parameters.AddWithValue("@p2", yakin_hasta.SelectedValue);
            ekle.Parameters.AddWithValue("@p3", yakin_yakinlik.Text);
            ekle.Parameters.AddWithValue("@p4", yakin_kimlik.Text);
            ekle.Parameters.AddWithValue("@p5", yakin_telefon.Text);
            ekle.Parameters.AddWithValue("@p6", yakin_email.Text);
            ekle.Parameters.AddWithValue("@p7", yakin_adres.Text);
            ekle.ExecuteNonQuery();
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