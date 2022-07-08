using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FilmVeriTabaniUygulamasi_ENOCA.Admin
{
    public partial class login : System.Web.UI.Page
    {

        Baglanti bgl = new Baglanti();

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public string durum;
        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM tblKullanici where KullaniciAdi = @p1 AND KullaniciSifre = @p2", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", txtMail.Text);
                cmd.Parameters.AddWithValue("@p2", txtSifre.Text);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    LoginCounter.Count = 1;
                    Response.Redirect("index.aspx");
                }
                else
                {
                    lblDurum.Text = "Şifre Hatalı...";
                }
                bgl.baglanti().Close();
            }
            catch (Exception)
            {
                durum = lblDurum.Text;
                lblDurum.Text = "Bağlantı Hatası";
            }
        }
    }
}