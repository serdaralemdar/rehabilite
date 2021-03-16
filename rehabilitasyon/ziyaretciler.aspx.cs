using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_ziyaretciler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
         
            SqlCommand komut = new SqlCommand("SELECT ziyaretci_id,ziyaretci_adsoyad,ziyaretci_yakinlik,hasta_id,ziyaretci_baslama,hasta_adsoyad FROM tbl_ziyaretciler INNER JOIN tbl_hastalar ON tbl_hastalar.hasta_id=tbl_ziyaretciler.ziyaretci_hastaid WHERE ziyaretci_bitis IS NULL", bgl.baglanti());
            
            SqlDataReader oku = komut.ExecuteReader();
            zlistesi.DataSource = oku;
            zlistesi.DataBind();

        }
    }

    protected void ziyaret_bitir_Click(object sender, EventArgs e)
    {

        Button btn = (Button)sender;
        string idsi = btn.CommandArgument;

        SqlCommand bitir = new SqlCommand("UPDATE tbl_ziyaretciler SET ziyaretci_bitis=@bitis WHERE ziyaretci_id=@ids", bgl.baglanti());
        bitir.Parameters.AddWithValue("@ids", idsi);
        bitir.Parameters.AddWithValue("@bitis", DateTime.Now);
        bitir.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Redirect(Request.RawUrl);


    }
}