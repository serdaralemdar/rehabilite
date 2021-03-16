using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class giris : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        { 
        if(Request.QueryString["durum"] == "cikis")
        {
                kontrolyap.CssClass = "alert alert-danger";
            kontrolyap.Text = "Başarıyla Çıkış Yapıldı..";
        }
        }

    }

    protected void girisyap_Click(object sender, EventArgs e)
    {

            SqlCommand kontrol = new SqlCommand("SELECT * FROM tbl_kullanicilar WHERE kullanici_adi=@p1 AND kullanici_sifre=@p2", bgl.baglanti());
             string yenisifre = FormsAuthentication.HashPasswordForStoringInConfigFile(sifre.Text, "MD5");
            kontrol.Parameters.AddWithValue("@p1", kadi.Text);
            kontrol.Parameters.AddWithValue("@p2", yenisifre);
            SqlDataReader dr = kontrol.ExecuteReader();


        if(dr.Read())
        {
           
            Session["adi"] = dr["kullanici_adsoyad"].ToString();
            Session["girisyapti"] = true;
            Session["kullanici_id"] = dr["kullanici_id"].ToString();
            Session["kullanici_adi"] = dr["kullanici_adi"].ToString();
            Response.Redirect("Default.aspx");
            
        }
        else
        {
            kontrolyap.Text = "Giriş Başarısız";
            
        }

    }
}