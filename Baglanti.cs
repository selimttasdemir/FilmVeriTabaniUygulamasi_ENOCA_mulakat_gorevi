using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace FilmVeriTabaniUygulamasi_ENOCA
{
    public class Baglanti
    {
        public SqlConnection baglanti()
        {
            try
            {
                string cnnstr = "Data Source=SELIM-TASDEMIR\\SELIMTASDEMIR;Initial Catalog=FimArsivDB;Integrated Security=True";
                SqlConnection bgl = new SqlConnection(cnnstr);
                bgl.Open();
                SqlConnection.ClearPool(bgl);
                SqlConnection.ClearAllPools();
                return bgl;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}