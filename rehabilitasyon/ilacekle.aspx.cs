using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ilacekle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ilaceklebtn_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO tbl_ilaclar (ilac_adi,ilac_stok) VALUES (@p1,@p2)", bgl.baglanti());
            ekle.Parameters.AddWithValue("@p1", ilacadi.Text);
            ekle.Parameters.AddWithValue("@p2", ilacstok.Text);
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