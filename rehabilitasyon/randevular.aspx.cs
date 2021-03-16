using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class randevular : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            doktorlarial();



        }
    }

    private void doktorlarial()
    {
        SqlCommand doccek = new SqlCommand("SELECT doc_id,doc_adsoyad FROM tbl_doc", bgl.baglanti());
        SqlDataReader oku = doccek.ExecuteReader();
        randevu_ara_doktor.DataSource = oku;
        randevu_ara_doktor.DataTextField = "doc_adsoyad";
        randevu_ara_doktor.DataValueField = "doc_id";
        randevu_ara_doktor.DataBind();
        randevu_ara_doktor.Items.Insert(0, new ListItem("Doktor Seçin", "0"));
        bgl.baglanti().Close();
    }

    protected void ara_Click(object sender, EventArgs e)
    {
        string bglcumle = "SELECT * FROM tbl_randevu INNER JOIN tbl_hastalar ON tbl_randevu.randevu_hastaid=tbl_hastalar.hasta_id INNER JOIN tbl_doc ON tbl_randevu.randevu_docid=tbl_doc.doc_id WHERE randevu_tarih=@p1";

        if(randevu_ara_doktor.SelectedValue!= "0")
        {
            bglcumle += " AND randevu_docid=@p2";
        }
        if(randevu_ara_durum.SelectedValue!= "0")
        {
            bglcumle += " AND randevu_durum=@p3";
        }
        SqlCommand getir = new SqlCommand(bglcumle, bgl.baglanti());
        getir.Parameters.AddWithValue("@p1", DateTime.Parse(randevu_ara_tarih.Text).ToString("yyyy-MM-dd"));
        getir.Parameters.AddWithValue("@p2", randevu_ara_doktor.SelectedValue);
        getir.Parameters.AddWithValue("@p3", randevu_ara_durum.SelectedValue);
        SqlDataReader oku = getir.ExecuteReader();
        randevulistesi.DataSource = oku;
        randevulistesi.DataBind();
        bgl.baglanti().Close();


    }
}