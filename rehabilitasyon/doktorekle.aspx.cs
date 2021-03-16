using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class doktorekle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void doc_ekle_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO tbl_doc (doc_adsoyad,doc_brans) VALUES (@p1,@p2)", bgl.baglanti());
            ekle.Parameters.AddWithValue("@p1", doc_adsoyad.Text);
            ekle.Parameters.AddWithValue("@p2", doc_brans.Text);
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