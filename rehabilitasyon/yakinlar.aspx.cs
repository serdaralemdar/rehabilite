using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yakinlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            SqlCommand komut = new SqlCommand("SELECT yakin_id,yakin_adsoyad,yakin_telefon,yakin_yakinlik,hasta_adsoyad,yakin_hastaid FROM tbl_yakinlar INNER JOIN tbl_hastalar ON tbl_yakinlar.yakin_hastaid=tbl_hastalar.hasta_id", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            ylistesi.DataSource = oku;
            ylistesi.DataBind();


        }

    }
}