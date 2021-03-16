using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ilacduzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string ilacid = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("ilaclar.aspx");
                return;

            }
            else
            {
            SqlCommand verial = new SqlCommand("SELECT * FROM tbl_ilaclar WHERE ilac_id=@p1", bgl.baglanti());
                ilacid = Request.QueryString["id"];
                verial.Parameters.AddWithValue("@p1", ilacid);
                SqlDataReader dr = verial.ExecuteReader();
                dr.Read();
                ilacadi.Text = dr["ilac_adi"].ToString();
                ilacstok.Text = dr["ilac_stok"].ToString();
                bgl.baglanti().Close();




            }

        }
    }

    protected void ilacduzenlebtn_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand duzenle = new SqlCommand("UPDATE tbl_ilaclar SET ilac_adi=@p1,ilac_stok=@p2 WHERE ilac_id=@p3", bgl.baglanti());
            duzenle.Parameters.AddWithValue("@p1", ilacadi.Text);
            duzenle.Parameters.AddWithValue("@p2", ilacstok.Text);
            duzenle.Parameters.AddWithValue("@p3", Request.QueryString["id"]);
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