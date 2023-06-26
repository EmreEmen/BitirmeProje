using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1.Admin
{  
    public partial class Ayarlar : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["bitirmeProjeConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;
        }     
        protected void Button1_Click(object sender, EventArgs e)
        {                             
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblAyarlar", baglanti);           
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);           
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTlf.Text = tablo.Rows[0]["tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();        
            Label1.Text= tablo.Rows[0]["id"].ToString();
            baglanti.Close();
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail,tlf=@tlf,Adres=@Adres where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@tlf", txtTlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());        
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }     
    }
    }
