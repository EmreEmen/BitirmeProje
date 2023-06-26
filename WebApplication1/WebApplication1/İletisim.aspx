<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="WebApplication1.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Bize Ulasın</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <section class="contact-section section_padding">
    <div class="container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25632.23006584241!2d36.119267979101565!3d36.577524800000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x152f58e76c45ad8b%3A0xf98a91f01da61525!2s%C4%B0skenderun%20Teknik%20%C3%9Cniversitesi%20(%C4%B0STE)!5e0!3m2!1str!2str!4v1670232134809!5m2!1str!2str" 
            width="1200" height="800" style="border:0;" allowfullscreen=""
            loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
     <br><br><br>        
        <form class="form-check" runat="server">
      <div class="row" >
        <div class="col-lg-8">
      
            <div class="row">
              <div class="col-12 col-xl-12">
               
              </div>
              <div class="col-sm-6">
                <div class="form-group">           
                    <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="form-control w-100" placeholder="Adınızı ve Soyadınızı Yazınız"></asp:TextBox>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                      <asp:TextBox ID="txtMail" runat="server" CssClass="form-control w-100" placeholder="Mail Adresinizi Yazınız"></asp:TextBox>
                </div>
              </div>
              <div class="col-12">
                <div class="form-group">
                      <asp:TextBox ID="txtKonu" runat="server" CssClass="form-control w-100" placeholder="Konuyu  Yazınız"></asp:TextBox>
                </div>
              </div>
                 <div class="col-12">
                 <div class="form-group">
                      <asp:TextBox ID="txtMesaj" runat="server" Height="100px" TextMode="MultiLine" CssClass="form-control w-100" placeholder="Mesajı Yazınız"></asp:TextBox>          
                </div></div>
            </div>
              
            <div class="form-group mt-3">   
                <asp:Button ID="iletisimButton" runat="server" Text="Gönder"  CssClass="button button-contactForm btn_1" OnClick="iletisimButton_Click" />
            </div>
            </form>
            </div>
      </div>
 
        </div>
      
     

        
  </section>
</asp:Content>
