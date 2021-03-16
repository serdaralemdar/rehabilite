using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class hastalar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM tbl_hastalar", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            hlistesi.DataSource = oku;
            hlistesi.DataBind();
        }

    }


}