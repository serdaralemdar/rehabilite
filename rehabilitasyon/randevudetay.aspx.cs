using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class randevudetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("randevular.aspx");
                return;

            }
            else
            {
           
                SqlCommand verial = new SqlCommand("SELECT * FROM tbl_randevu INNER JOIN tbl_hastalar ON tbl_randevu.randevu_hastaid=tbl_hastalar.hasta_id INNER JOIN tbl_doc ON tbl_randevu.randevu_docid=tbl_doc.doc_id WHERE randevu_id=@p1", bgl.baglanti());
                verial.Parameters.AddWithValue("@p1", Request.QueryString["id"]);
                SqlDataReader dr = verial.ExecuteReader();
                dr.Read();
                randevu_doktor_id.Text = Convert.ToString(dr["doc_adsoyad"]); ;
                randevu_hasta_id.Text = Convert.ToString(dr["hasta_adsoyad"]);
                randevu_durum.SelectedValue = Convert.ToString(dr["randevu_durum"]);
                randevu_saat.Text = Convert.ToString(dr["randevu_saat"]);
                randevu_tarih.Text = DateTime.Parse(Convert.ToString(dr["randevu_tarih"])).ToString("yyyy-MM-dd"); ;
                randevu_teshis.Text = Convert.ToString(dr["randevu_teshis"]);
                bgl.baglanti().Close();

                





            }

        }
    }



    protected void randevu_duzenle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand duzenle = new SqlCommand("UPDATE tbl_randevu SET randevu_teshis=@p1,randevu_durum=@p2 WHERE randevu_id=@p3", bgl.baglanti());
            duzenle.Parameters.AddWithValue("@p1", randevu_teshis.Text);
            duzenle.Parameters.AddWithValue("@p2", randevu_durum.Text);
            duzenle.Parameters.AddWithValue("@p3", Request.QueryString["id"]);
            duzenle.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        catch (Exception hata)
        {
            mesaj.CssClass = "alert alert-danger";

            mesaj.Text = "Düzenleme işleminde bir hata oluştu. Hata : " + hata.Message;
        }
        mesaj.CssClass = "alert alert-success";
        mesaj.Text = "Düzenleme başarılı şekilde yapıldı";

    }
}