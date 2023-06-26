<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="WebApplication1.Admin.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title">Kurumsal İşlemleri  Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">                
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Hakkımızda</label>                   
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Baslık"></asp:TextBox>
                    </div>                 
                    <div class="form-group">
                      <label for="exampleTextarea1">Detay</label>
                         <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Özet "></asp:TextBox>
                        <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                    </div> 
                     
                      <asp:Button ID="Button1" runat="server" Text="Yükle"  CssClass="btn btn-danger" OnClick="Button1_Click"   />                   
                      <asp:Button ID="Button2" runat="server" Text="Güncelle"  CssClass="btn btn-success" OnClick="Button2_Click"   />
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      <br />
                    </form>
                </div>
              </div>
            </div>
</asp:Content>
