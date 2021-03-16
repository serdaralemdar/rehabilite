using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class hastadetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string hastaid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("hastalar.aspx");
                return;

            }
            else
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM tbl_hastalar WHERE hasta_id=@p1", bgl.baglanti());
                hastaid = Request.QueryString["id"];
                komut.Parameters.AddWithValue("@p1", hastaid);
                SqlDataReader dr = komut.ExecuteReader();
                dr.Read();
                hasta_kimlik.Text = dr["hasta_kimlik"].ToString();
                hasta_adsoyad.Text = dr["hasta_adsoyad"].ToString();
                hasta_babaad.Text = dr["hasta_babaad"].ToString();
                hasta_anaad.Text = dr["hasta_anaad"].ToString();
                hasta_adres.Text = dr["hasta_adres"].ToString();
                hasta_dgeri.Text = dr["hasta_dyeri"].ToString();
                hasta_telefon.Text = dr["hasta_telefon"].ToString();
                hasta_email.Text = dr["hasta_email"].ToString();
                hasta_kangrubu.SelectedValue = dr["hasta_kangrubu"].ToString();
                hasta_alerji.Text = dr["hasta_alerji"].ToString();
                hasta_babaad.Text = dr["hasta_babaad"].ToString();
                hasta_odano.Text = dr["hasta_odano"].ToString();
                hasta_sigara.SelectedValue = dr["hasta_sigara"].ToString();
                hasta_cinsiyet.SelectedValue = dr["hasta_cinsiyet"].ToString();
                hasta_alkol.SelectedValue = dr["hasta_alkol"].ToString();
                hasta_diyabet.SelectedValue = dr["hasta_diyabet"].ToString();
                hasta_hiv.SelectedValue = dr["hasta_hiv"].ToString();
                hasta_hepatit.SelectedValue = dr["hasta_hepatit"].ToString();
                hasta_SGK.SelectedValue = dr["hasta_SGK"].ToString();


            }
            if (Request.QueryString["sil"] != null)
            {
                try
                {
                
                    SqlCommand sil = new SqlCommand("DELETE FROM tbl_hilac WHERE hilac_id=@p1", bgl.baglanti());
                    sil.Parameters.AddWithValue("@p1", Request.QueryString["sil"]);
                    sil.ExecuteNonQuery();
                    bgl.baglanti().Close();
                }
                catch (Exception hata)
                {
                    mesaj.CssClass = "alert alert-danger";
                    mesaj.Text = "İlaç silme sırasında hata oluştu. Hata : " + hata.Message;
                    return;

                }
                mesaj.CssClass = "alert alert-success";
                mesaj.Text = "İlaç silme işlemi başarılı.";

            }


        }
        tablocek();
        
        

       
    }


    private void tablocek()
    {
        SqlCommand komutt = new SqlCommand("SELECT * FROM tbl_hilac INNER JOIN tbl_ilaclar ON tbl_ilaclar.ilac_id=tbl_hilac.hilac_ilacid WHERE hilac_hastaid=@p2", bgl.baglanti());
        komutt.Parameters.AddWithValue("@p2", hastaid);
        SqlDataReader dr = komutt.ExecuteReader();
        hilaclari.DataSource = dr;
        hilaclari.DataBind();
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand komutt = new SqlCommand("UPDATE tbl_hastalar SET hasta_kimlik=@t1,hasta_adsoyad=@t2,hasta_cinsiyet=@t4,hasta_babaad=@t5,hasta_anaad=@t6,hasta_dyeri=@t7,hasta_adres=@t8,hasta_telefon=@t9,hasta_email=@t10,hasta_SGK=@t11,hasta_sigara=@t12,hasta_kangrubu=@t13,hasta_hepatit=@t14,hasta_alerji=@t15,hasta_hiv=@t16,hasta_diyabet=@t17,hasta_odano=@t18,hasta_alkol=@t19 WHERE hasta_id=@t20", bgl.baglanti());
            komutt.Parameters.AddWithValue("@t1", hasta_kimlik.Text);
            komutt.Parameters.AddWithValue("@t2", hasta_adsoyad.Text);
            komutt.Parameters.AddWithValue("@t4", hasta_cinsiyet.SelectedValue);
            komutt.Parameters.AddWithValue("@t5", hasta_babaad.Text);
            komutt.Parameters.AddWithValue("@t6", hasta_anaad.Text);
            komutt.Parameters.AddWithValue("@t7", hasta_dgeri.Text);
            komutt.Parameters.AddWithValue("@t8", hasta_adres.Text);
            komutt.Parameters.AddWithValue("@t9", hasta_telefon.Text);
            komutt.Parameters.AddWithValue("@t10", hasta_email.Text);
            komutt.Parameters.AddWithValue("@t11", hasta_SGK.SelectedValue);
            komutt.Parameters.AddWithValue("@t12", hasta_sigara.SelectedValue);
            komutt.Parameters.AddWithValue("@t13", hasta_kangrubu.SelectedValue);
            komutt.Parameters.AddWithValue("@t14", hasta_hepatit.SelectedValue);
            komutt.Parameters.AddWithValue("@t15", hasta_alerji.Text);
            komutt.Parameters.AddWithValue("@t16", hasta_hiv.SelectedValue);
            komutt.Parameters.AddWithValue("@t17", hasta_diyabet.SelectedValue);
            komutt.Parameters.AddWithValue("@t18", hasta_odano.Text);
            komutt.Parameters.AddWithValue("@t19", hasta_alkol.SelectedValue);
            komutt.Parameters.AddWithValue("@t20", Request.QueryString["id"]);
            komutt.ExecuteNonQuery();
            SqlDataReader rd2 = komutt.ExecuteReader();
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

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("hilacekle.aspx?hastaid=" + Request.QueryString["id"]);
    }

  
}