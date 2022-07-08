using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FilmVeriTabaniUygulamasi_ENOCA.Admin
{
    public partial class Create_Account : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnHesapOlustur_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != "" && txtSoyad.Text != "" && txtMail.Text != "" && txtSifre.Text != "")
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("insert into tblKullanici (Adi, Soyadi, KullaniciAdi, KullaniciSifre) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
                    cmd.Parameters.AddWithValue("@p1", txtAd.Text);
                    cmd.Parameters.AddWithValue("@p2", txtSoyad.Text);
                    cmd.Parameters.AddWithValue("@p3", txtMail.Text);
                    cmd.Parameters.AddWithValue("@p4", txtSifre.Text);
                    cmd.ExecuteNonQuery();
                    lblDurum.Text = "Kayıt Başarılı.";
                    Response.Redirect("login.aspx");
                    login lg = new login();
                    lg.durum = "Kayıt Başarılı.";
                }
                catch (Exception)
                {
                    lblDurum.Text = "Hata! Lütfen Tekrar Deneyiniz...";
                }
            }
            else
            {
                lblDurum.Text = "Alanları Boş Bırakmayınız...";
            }
        }
    }
}