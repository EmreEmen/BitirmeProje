using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class İletisim : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["bitirmeProjeConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void iletisimButton_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblIletisim (Mesaj,AdSoyad,Mail,Konu) values (@Mesaj,@AdSoyad,@Mail,@Konu)", baglanti);
            komut.Parameters.AddWithValue("@Mesaj", txtMesaj.Text.ToString());
            komut.Parameters.AddWithValue("@AdSoyad", txtAdSoyad.Text.ToString());
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Konu", txtKonu.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}