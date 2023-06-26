<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="WebApplication1.Admin.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title">Site Ayarları İşlemleri  Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">                
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">E-mail</label>                   
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-mail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Telefon</label>                   
                        <asp:TextBox ID="txtTlf" runat="server" CssClass="form-control"  placeholder="Telefon "></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Adres</label>
                         <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Adres "></asp:TextBox>
                    </div>                   
                  
                                    
                      <asp:Button ID="Button1" runat="server" Text="Yükle"  CssClass="btn btn-danger"  OnClick="Button1_Click" />                   
                      <asp:Button ID="Button2" runat="server" Text="Güncelle"  CssClass="btn btn-success"  OnClick="Button2_Click"  />
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      <br />
                    </form>
                </div>
              </div>
            </div>
</asp:Content>
