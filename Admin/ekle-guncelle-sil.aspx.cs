using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FilmVeriTabaniUygulamasi_ENOCA.Admin
{
    public partial class ekle_guncelle_sil : System.Web.UI.Page
    {
        Baglanti bgl = new Baglanti();
        string filmID = "";
        string ID = "";
        string islem = "";

        void listele()
        {
            SqlCommand cmd = new SqlCommand("select * from tblFilm", bgl.baglanti());
            rptListe.DataSource = cmd.ExecuteReader();
            rptListe.DataBind();
            bgl.baglanti().Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (LoginCounter.Count != 1)
            {
                Response.Redirect("login.aspx");
            }
            try
            {
                listele();

                ID = Request.QueryString["ID"];
                filmID = Request.QueryString["FilmID"];
                islem = Request.QueryString["islem"];

                if (islem == "sil")
                {
                    SqlCommand komut = new SqlCommand("delete from tblFilm where FilmID=@p1", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", filmID);
                    komut.ExecuteNonQuery();
                }
                bgl.baglanti().Close();
            }
            catch (Exception)
            {

                lblDurum.Text = "Bağlantı Hatası";
            }

            SqlCommand comm; //Sorgu nesnemizi oluşturalım.
            if (!IsPostBack)
            {
                //Sorgumuzu oluşturalım.
                comm = new SqlCommand("select * from tblFilm", bgl.baglanti());

                //Etkilenen satır sayımızı döndürüyoruz
                comm.ExecuteNonQuery();

                //verilerimizi okuyucuya gönderiyoruz.
                SqlDataReader dr = comm.ExecuteReader();

                //Verileri okuyoruz
                while (dr.Read())
                {
                    //ListItem oluşturuyoruz
                    ListItem litem = new ListItem();

                    //Oluşturduğumuz listitemlara value ve text değerlerini 
                    //veritabanındaki haliyle ekliyoruz
                    litem.Text = dr["FilmAdi"].ToString();
                    litem.Value = dr["FilmID"].ToString();

                    //Dropdownliste ekliyoruz
                    dropdownMenuButton.Items.Add(litem);
                }
                bgl.baglanti().Close(); //Bağlantıyı kapatıyoruz
                dr.Close();       //okuyucuyumuzu kapatıyoruz.
            }

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtFilmAd.Text != "" && txtYapimYili.Text != "")
            {
                SqlCommand komut = new SqlCommand("insert into tblFilm (FilmAdi,FilmYapimYili) values (@P1,@P2)", bgl.baglanti());
                komut.Parameters.AddWithValue("@P1", txtFilmAd.Text);
                komut.Parameters.AddWithValue("@P2", Convert.ToInt32(txtYapimYili.Text));

                komut.ExecuteNonQuery();
                txtFilmAd.Text = "";
                txtYapimYili.Text = "";
                Response.Redirect("ekle-guncelle-sil.aspx");
                lblDurum.Text = "Film Listeye Eklenmiştir.";
            }
            else
            {
                lblDurum.Text = "Kutular Boş Geçilemez ...";
            }

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            if (txtFilmAd.Text != "" && txtYapimYili.Text != "")
            {
                SqlCommand cmd = new SqlCommand("UPDATE tblFilm SET FilmAdi=@p1,FilmYapimYili=@p2 WHERE FilmID=@p0", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p0",dropdownMenuButton.SelectedValue);
                cmd.Parameters.AddWithValue("@p1", txtFilmAd.Text);
                cmd.Parameters.AddWithValue("@p2", Convert.ToInt32(txtYapimYili.Text));
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();
                Response.Redirect("ekle-guncelle-sil.aspx");
            }
        }
    }
}