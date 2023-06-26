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

   
    public partial class BlogEkle : System.Web.UI.Page
    {    
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["bitirmeProjeConnectionString"].ConnectionString;
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }    
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblBlog(Baslik,Ozet,KategoriId,Resim,Detay,Tarih) values (@Baslik,@Ozet,@KategoriId,@Resim,@Detay,@Tarih)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Resim", lblresim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BlogEkle.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                {
                    string Resimad = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/image/blog/" + Resimad));
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
