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
    public partial class Login : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["bitirmeProjeConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblkullanici  where userName=@userName and Sifre=@Sifre", baglanti);
            komut.Parameters.AddWithValue("@userName", txtUserName.Text.ToString());
            komut.Parameters.AddWithValue("@Sifre", txtSifre.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["kullanici"] = oku["userName"].ToString();
                Response.Redirect("~/Admin/Default.aspx");
            }
            else
            {
                Label1.Text = "Hatalı Giriş Yaptınız";
            }
            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
        }
    }
}