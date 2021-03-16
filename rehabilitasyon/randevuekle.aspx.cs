using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Linq;
using System.Collections;

public partial class randevuekle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            hastalaricek();
            doktorlaricek();

 
        }
    }

    private void doktorlaricek()
    {
        SqlCommand doccek = new SqlCommand("SELECT doc_id,doc_adsoyad FROM tbl_doc WHERE doc_durum=1", bgl.baglanti());
        SqlDataReader oku = doccek.ExecuteReader();
        randevu_doktor_id.DataSource = oku;
        randevu_doktor_id.DataTextField = "doc_adsoyad";
        randevu_doktor_id.DataValueField = "doc_id";
        randevu_doktor_id.DataBind();
        randevu_doktor_id.Items.Insert(0, new ListItem("Doktor Seçin", "0"));
        bgl.baglanti().Close();

    }

    private void hastalaricek()
    {
        SqlCommand hastacek = new SqlCommand("SELECT hasta_id,hasta_adsoyad FROM tbl_hastalar", bgl.baglanti());
        SqlDataReader oku = hastacek.ExecuteReader();
        randevu_hasta_id.DataSource = oku;
        randevu_hasta_id.DataTextField = "hasta_adsoyad";
        randevu_hasta_id.DataValueField = "hasta_id";
        randevu_hasta_id.DataBind();
        randevu_hasta_id.Items.Insert(0, new ListItem("Hasta Seçin", "0"));
        bgl.baglanti().Close();
    }

    protected void randevu_tarih_TextChanged(object sender, EventArgs e)
    {

        SqlCommand rcek = new SqlCommand("SELECT randevu_tarih,randevu_saat FROM tbl_randevu WHERE randevu_tarih=@p1", bgl.baglanti());
        rcek.Parameters.AddWithValue("@p1", randevu_tarih.Text);
        SqlDataReader al2 = rcek.ExecuteReader();

        SqlCommand saatcek = new SqlCommand("SELECT * FROM tbl_rsaatler", bgl.baglanti());
        SqlDataReader al = saatcek.ExecuteReader();

        ArrayList ceek = new ArrayList();
        while(al2.Read())
        {
            ceek.Add(al2["randevu_saat"]);
        }

        ArrayList ceek2 = new ArrayList();
        while(al.Read())
        {
            ceek2.Add(al["saat_saat"]);
        }

        object[] yeni = ceek2.ToArray().Except(ceek.ToArray()).ToArray();


        randevu_saat.DataSource = yeni;
           // randevu_saat.DataTextField = "saat_saat";
           // randevu_saat.DataValueField = "saat_saat";
            randevu_saat.DataBind();
            randevu_saat.Items.Insert(0, new ListItem("Saat Seçin", "0"));
            bgl.baglanti().Close();
        randevu_saat.Visible = true;

        
    }

    protected void randevu_doktor_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        randevu_tarih.Visible = true;
    }

    protected void randevu_ekle_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO tbl_randevu (randevu_docid,randevu_hastaid,randevu_tarih,randevu_saat,randevu_durum) VALUES (@doc,@hasta,@tarih,@saat,@durum)", bgl.baglanti());
            ekle.Parameters.AddWithValue("@doc", randevu_doktor_id.SelectedValue);
            ekle.Parameters.AddWithValue("@hasta", randevu_hasta_id.SelectedValue);
            ekle.Parameters.AddWithValue("@tarih", randevu_tarih.Text);
            ekle.Parameters.AddWithValue("@saat", randevu_saat.Text);
            ekle.Parameters.AddWithValue("@durum", 1);
            ekle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        catch (Exception hata)
        {
            mesaj.CssClass = "alert alert-danger";
            mesaj.Text = "Randevu Oluşturulurken hata oluştu. Hata : " + hata.Message;
        }
        mesaj.CssClass = "alert alert-success";
        mesaj.Text = "Randevu Başarıyla Eklendi.";
        randevu_saat.Items.Clear();
        randevu_doktor_id.SelectedValue = "0";
        randevu_tarih.Visible = false;
        randevu_saat.Visible = false;



    }
}