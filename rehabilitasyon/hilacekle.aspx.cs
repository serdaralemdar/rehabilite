using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class hilacekle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        { 
        ilaccek();
        hastacek();
        }
    }

    private void hastacek()
    {
        SqlCommand hastacek = new SqlCommand("SELECT hasta_id,hasta_adsoyad FROM tbl_hastalar", bgl.baglanti());
        SqlDataReader oku = hastacek.ExecuteReader();
        ekle_hasta_id.DataSource = oku;
        ekle_hasta_id.DataTextField = "hasta_adsoyad";
        ekle_hasta_id.DataValueField = "hasta_id";
        ekle_hasta_id.DataBind();
        ekle_hasta_id.Items.Insert(0, new ListItem("Hasta Seçin", "0"));
        if (Request.QueryString["hastaid"] != null)
        {
            ekle_hasta_id.SelectedValue = Request.QueryString["hastaid"];
        }
        bgl.baglanti().Close();

     
    }

    private void ilaccek()
    {
        SqlCommand ilaccek = new SqlCommand("SELECT ilac_id,ilac_adi FROM tbl_ilaclar", bgl.baglanti());
        SqlDataReader oku = ilaccek.ExecuteReader();
        ekle_ilac_id.DataSource = oku;
        ekle_ilac_id.DataTextField = "ilac_adi";
        ekle_ilac_id.DataValueField = "ilac_id";
        ekle_ilac_id.DataBind();
        ekle_ilac_id.Items.Insert(0, new ListItem("İlaç Seçin", "0"));
        bgl.baglanti().Close();
    }




    protected void hilac_ekle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO tbl_hilac (hilac_ilacid,hilac_hastaid,hilac_siklik,hilac_baslamat,hilac_bitist,hilac_sure) VALUeS (@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglanti());
            ekle.Parameters.AddWithValue("@p1", ekle_ilac_id.SelectedValue);
            ekle.Parameters.AddWithValue("@p2", ekle_hasta_id.SelectedValue);
            ekle.Parameters.AddWithValue("@p3", ekle_ilac_sikligi.Text);
            ekle.Parameters.AddWithValue("@p4", ekle_ilac_baslama.Text);
            ekle.Parameters.AddWithValue("@p5", ekle_ilac_bitis.Text);
            ekle.Parameters.AddWithValue("@p6", ekle_ilac_sure.Text);
            ekle.ExecuteNonQuery();
            bgl.baglanti().Close();
            stoktandus();
        }
        catch (Exception hata)
        {
            yanit.CssClass = "label label-danger";
            yanit.Text = "Bilgiler girilirken hata oluştu. Hata : " + hata.Message;
        }
        yanit.CssClass = "label label-success";
        yanit.Text = "İlaç hastaya başarıyla eklendi.";
        ekle_ilac_baslama.Text = "";
        ekle_ilac_bitis.Text = "";
        ekle_ilac_sikligi.Text = "";
        ekle_ilac_sure.Text = "";
        ekle_hasta_id.SelectedValue = "0";
        ekle_ilac_id.SelectedValue = "0";
    }

    private void stoktandus()
    {
        SqlCommand dus = new SqlCommand("UPDATE tbl_ilaclar SET ilac_stok=ilac_stok-1 WHERE ilac_id=@ilacid", bgl.baglanti());
        dus.Parameters.AddWithValue("@ilacid", ekle_ilac_id.SelectedValue);
        dus.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}