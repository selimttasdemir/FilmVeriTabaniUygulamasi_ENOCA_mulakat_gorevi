using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FilmVeriTabaniUygulamasi_ENOCA
{
    public partial class film_listele : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        void listele()
        {
            SqlCommand cmd = new SqlCommand("select * from tblFilm", bgl.baglanti());
            rptListe.DataSource = cmd.ExecuteReader();
            rptListe.DataBind();
            bgl.baglanti().Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            listele();
        }

        protected void btnBul_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * From tblFilm where FilmYapimYili BETWEEN @p1 and @p2", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(txtMin.Text));
            komut.Parameters.AddWithValue("@p2", Convert.ToInt32(txtMax.Text));
            rptListe.DataSource = komut.ExecuteReader();
            rptListe.DataBind();
            bgl.baglanti().Close();
        }
    }
}