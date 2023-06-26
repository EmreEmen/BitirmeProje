using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebApplication1.Admin
{
    public partial class PaketEkle : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["bitirmeProjeConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }       
        protected void Button1_Click1(object sender, EventArgs e)
        {   SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblPaket(Adi,Fiyat,Sure,Lokasyon,Resim,Detay) values (@Adi,@Fiyat,@Sure,@Lokasyon,@Resim,@Detay)", baglanti);
            komut.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", Convert.ToInt32( txtFiyat.Text.ToString()));
            komut.Parameters.AddWithValue("@Sure", Convert.ToInt32(txtSüre.Text.ToString()));
            komut.Parameters.AddWithValue("@Lokasyon", txtKonum.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblresim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("PaketEkle.aspx");

        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string Resimad = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/image/Paketler/" + Resimad));
                    lblresim.Text = Resimad.ToString();
                }
                else
                {
                    lblresim.Text = "Lütfen jpeg,jpg veya png uzantılı resim seçin";

                }
            }
            else
                lblresim.Text = "Lütfen Bir resim seçin...";
        }
    }
}