using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yakinduzenleaspx : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string yakinid = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("yakinlar.aspx");
                return;

            }
            else
            {
                hastacek();
                verilericek();
                
            }

        }
    }


    private void verilericek()
    {
        SqlCommand verial = new SqlCommand("SELECT * FROM tbl_yakinlar WHERE yakin_id=@p1", bgl.baglanti());
        yakinid = Request.QueryString["id"];
        verial.Parameters.AddWithValue("@p1", yakinid);
        SqlDataReader dr = verial.ExecuteReader();
        dr.Read();
        yakin_adres.Text = dr["yakin_adres"].ToString();
        yakin_adsoyad.Text = dr["yakin_adsoyad"].ToString();
        yakin_kimlik.Text = dr["yakin_kimlik"].ToString();
        yakin_email.Text = dr["yakin_email"].ToString();
        yakin_telefon.Text = dr["yakin_telefon"].ToString();
        yakin_yakinlik.Text = dr["yakin_yakinlik"].ToString();
        yakin_hasta.SelectedValue = dr["yakin_hastaid"].ToString();
        bgl.baglanti().Close();

    }

    private void hastacek()
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

    protected void yakin_ekle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand duzenle = new SqlCommand("UPDATE tbl_yakinlar SET yakin_adsoyad=@p1,yakin_hastaid=@p2,yakin_yakinlik=@p3,yakin_kimlik=@p4,yakin_telefon=@p5,yakin_email=@p6,yakin_adres=@p7", bgl.baglanti());
            duzenle.Parameters.AddWithValue("@p1", yakin_adsoyad.Text);
            duzenle.Parameters.AddWithValue("@p2", yakin_hasta.SelectedValue);
            duzenle.Parameters.AddWithValue("@p3", yakin_yakinlik.Text);
            duzenle.Parameters.AddWithValue("@p4", yakin_kimlik.Text);
            duzenle.Parameters.AddWithValue("@p5", yakin_telefon.Text);
            duzenle.Parameters.AddWithValue("@p6", yakin_email.Text);
            duzenle.Parameters.AddWithValue("@p7", yakin_adres.Text);
            duzenle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        catch (Exception hata)
        {

            mesaj.CssClass = "alert alert-danger";
            mesaj.Text = "Düzenleme sırasında hata oluştu. Hata : " + hata.Message;
            return;
        }
        mesaj.CssClass = "alert alert-success";
        mesaj.Text = "Düzenleme başarılı.";
    }
}