using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class doktorduzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("doktorlar.aspx");
                return;

            }
            else
            {
                SqlCommand verial = new SqlCommand("SELECT * FROM tbl_doc WHERE doc_id=@p1", bgl.baglanti());
                verial.Parameters.AddWithValue("@p1", Request.QueryString["id"]);
                SqlDataReader dr = verial.ExecuteReader();
                dr.Read();
                doc_adsoyad.Text = dr["doc_adsoyad"].ToString();
                doc_brans.Text = dr["doc_brans"].ToString();
                doc_durum.SelectedValue = dr["doc_durum"].ToString();
                bgl.baglanti().Close();
            }
        }
    }
    protected void doc_duzenle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand duzenle = new SqlCommand("UPDATE tbl_doc SET doc_adsoyad=@p1,doc_brans=@p2,doc_durum=@p3 WHERE doc_id=@p4", bgl.baglanti());
            duzenle.Parameters.AddWithValue("@p1", doc_adsoyad.Text);
            duzenle.Parameters.AddWithValue("@p2", doc_brans.Text);
            duzenle.Parameters.AddWithValue("@p3", doc_durum.SelectedValue);
            duzenle.Parameters.AddWithValue("@p4", Request.QueryString["id"]);
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

       
