using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ilachastalar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
           if(Request.QueryString["id"] != null)
            {
                tabloyual();
                ilac_id.SelectedValue = Request.QueryString["id"];
            }
           
           dropdoldur();
           
          
        }
        labelal();
    }

    private void labelal()
    {
       
            SqlCommand al = new SqlCommand("SELECT * FROM tbl_ilaclar WHERE ilac_id=@p1", bgl.baglanti());
            al.Parameters.AddWithValue("@p1", ilac_id.SelectedValue);
            SqlDataReader oku = al.ExecuteReader();
            if(oku.Read())
        { 
            ilacadi.Text = oku["ilac_adi"].ToString();
        }



    }

    private void dropdoldur()
    {
        SqlCommand ilaccek = new SqlCommand("SELECT ilac_id,ilac_adi FROM tbl_ilaclar", bgl.baglanti());
        SqlDataReader oku = ilaccek.ExecuteReader();
        ilac_id.DataSource = oku;
        ilac_id.DataTextField = "ilac_adi";
        ilac_id.DataValueField = "ilac_id";
        ilac_id.DataBind();
        ilac_id.Items.Insert(0, new ListItem("İlaç Seçin", "0"));
        bgl.baglanti().Close();
    }

    private void tabloyual()
    {
        SqlCommand tablo = new SqlCommand("SELECT ilac_id,ilac_adi,hasta_adsoyad,hilac_baslamat,hilac_bitist,ilac_stok,hilac_hastaid,hilac_durum FROM tbl_hilac INNER JOIN tbl_ilaclar ON tbl_hilac.hilac_ilacid=tbl_ilaclar.ilac_id INNER JOIN tbl_hastalar ON tbl_hilac.hilac_hastaid=tbl_hastalar.hasta_id WHERE hilac_ilacid=@p1", bgl.baglanti());
        tablo.Parameters.AddWithValue("@p1", Request.QueryString["id"]);
        SqlDataReader oku = tablo.ExecuteReader();
        ilachlistesi.DataSource = oku;
        ilachlistesi.DataBind();
        bgl.baglanti().Close();
       
    }


    protected void ilac_id_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand tablo = new SqlCommand("SELECT ilac_id,ilac_adi,hasta_adsoyad,hilac_baslamat,hilac_bitist,ilac_stok,hilac_hastaid,hilac_durum FROM tbl_hilac INNER JOIN tbl_ilaclar ON tbl_hilac.hilac_ilacid=tbl_ilaclar.ilac_id INNER JOIN tbl_hastalar ON tbl_hilac.hilac_hastaid=tbl_hastalar.hasta_id WHERE hilac_ilacid=@p1", bgl.baglanti());
        tablo.Parameters.AddWithValue("@p1", ilac_id.SelectedValue);
        SqlDataReader oku = tablo.ExecuteReader();
        ilachlistesi.DataSource = oku;
        ilachlistesi.DataBind();
        bgl.baglanti().Close();

    }
}         