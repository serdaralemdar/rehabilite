﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cikis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("giris.aspx?durum=cikis");
        return;

    }
}