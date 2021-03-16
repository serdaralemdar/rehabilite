using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class hilacduzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if(Request.QueryString["id"] == null)
            {
                Response.Redirect("ilachastalar.aspx");
                return;
            }else
            {
                verilerial();
                ilaccek();



            }
        }
    }

    private void ilaccek()
    {
        SqlCommand ilaccek = new SqlCommand("SELECT ilac_id,ilac_adi FROM tbl_ilaclar", bgl.baglanti());
        SqlDataReader oku = ilaccek.ExecuteReader();
        duzenle_ilac_id.DataSource = oku;
        duzenle_ilac_id.DataTextField = "ilac_adi";
        duzenle_ilac_id.DataValueField = "ilac_id";
        duzenle_ilac_id.DataBind();
        duzenle_ilac_id.Items.Insert(0, new ListItem("İlaç Seçin", "0"));
        bgl.baglanti().Close();

    }

    private void verilerial()
    {
        SqlCommand cek = new SqlCommand("SELECT * FROM tbl_hilac INNER JOIN tbl_hastalar ON tbl_hilac.hilac_hastaid=tbl_hastalar.hasta_id WHERE hilac_id=@p1", bgl.baglanti());
        cek.Parameters.AddWithValue("@p1", Request.QueryString["id"]);
        SqlDataReader oku = cek.ExecuteReader();
        oku.Read();
        duzenle_hasta_id.Text = oku["hasta_adsoyad"].ToString();
        duzenle_ilac_id.SelectedValue = oku["hilac_ilacid"].ToString();
        duzenle_ilac_baslama.Text = DateTime.Parse(Convert.ToString(oku["hilac_baslamat"])).ToString("yyyy-MM-dd"); 
        duzenle_ilac_bitis.Text = DateTime.Parse(Convert.ToString(oku["hilac_bitist"])).ToString("yyyy-MM-dd");
        duzenle_ilac_durum.SelectedValue = oku["hilac_durum"].ToString();
        duzenle_ilac_sikligi.Text = oku["hilac_siklik"].ToString();
        duzenle_ilac_sure.Text = oku["hilac_sure"].ToString();
        bgl.baglanti().Close();

    }

    protected void hilac_duzenle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand komut = new SqlCommand("UPDATE tbl_hilac SET hilac_ilacid=@p1,hilac_siklik=@p2,hilac_baslamat=@p3,hilac_bitist=@p4,hilac_sure=@p5,hilac_durum=@p6 WHERE hilac_id=@p7", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", duzenle_ilac_id.SelectedValue);
            komut.Parameters.AddWithValue("@p2", duzenle_ilac_sikligi.Text);
            komut.Parameters.AddWithValue("@p3", duzenle_ilac_baslama.Text);
            komut.Parameters.AddWithValue("@p4", duzenle_ilac_bitis.Text);
            komut.Parameters.AddWithValue("@p5", duzenle_ilac_sure.Text);
            komut.Parameters.AddWithValue("@p6", duzenle_ilac_durum.SelectedValue);
            komut.Parameters.AddWithValue("@p7", Request.QueryString["id"]);
            komut.ExecuteNonQuery();
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