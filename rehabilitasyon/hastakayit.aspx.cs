using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class hastakayit : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand komut = new SqlCommand("INSERT INTO tbl_hastalar (hasta_kimlik,hasta_adsoyad,hasta_cinsiyet,hasta_babaad,hasta_anaad,hasta_dyeri,hasta_adres,hasta_telefon,hasta_email,hasta_SGK,hasta_sigara,hasta_kangrubu,hasta_hepatit,hasta_alerji,hasta_hiv,hasta_diyabet,hasta_odano,hasta_alkol) VALUES (@t1,@t2,@t4,@t5,@t6,@t7,@t8,@t9,@t10,@t11,@t12,@t13,@t14,@t15,@t16,@t17,@t18,@t19)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", hasta_kimlik.Text);
            komut.Parameters.AddWithValue("@t2", hasta_adsoyad.Text);
            komut.Parameters.AddWithValue("@t4", hasta_cinsiyet.SelectedValue);
            komut.Parameters.AddWithValue("@t5", hasta_babaad.Text);
            komut.Parameters.AddWithValue("@t6", hasta_anaad.Text);
            komut.Parameters.AddWithValue("@t7", hasta_dgeri.Text);
            komut.Parameters.AddWithValue("@t8", hasta_adres.Text);
            komut.Parameters.AddWithValue("@t9", hasta_telefon.Text);
            komut.Parameters.AddWithValue("@t10", hasta_email.Text);
            komut.Parameters.AddWithValue("@t11", hasta_SGK.SelectedValue);
            komut.Parameters.AddWithValue("@t12", hasta_sigara.SelectedValue);
            komut.Parameters.AddWithValue("@t13", hasta_kangrubu.SelectedValue);
            komut.Parameters.AddWithValue("@t14", hasta_hepatit.SelectedValue);
            komut.Parameters.AddWithValue("@t15", hasta_alerji.Text);
            komut.Parameters.AddWithValue("@t16", hasta_hiv.SelectedValue);
            komut.Parameters.AddWithValue("@t17", hasta_diyabet.SelectedValue);
            komut.Parameters.AddWithValue("@t18", hasta_odano.Text);
            komut.Parameters.AddWithValue("@t19", hasta_alkol.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        catch (Exception hata)
        {

            mesaj.CssClass = "alert alert-danger";
            mesaj.Text = "Kayıt sırasında hata oluştu. Hata : " + hata.Message;
            return;
        }
        mesaj.CssClass = "alert alert-success";
        mesaj.Text = "Kayıt başarılı.";

    }
}