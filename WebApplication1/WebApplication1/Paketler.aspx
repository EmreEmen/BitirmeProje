<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Paketler.aspx.cs" Inherits="WebApplication1.Paketler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h2>Paketlerimiz</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
    <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>Paketler</span>                           
                        </div>
                    </div>
                </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeProjeConnectionString %>" SelectCommand="SELECT * FROM [tblPaket]"></asp:SqlDataSource>
                   
                    <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                             <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="image/Paketler/<%# Eval("Resim") %>" alt="<%# Eval("Resim") %>"">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                   
                                    <h3><a href="#"><%# Eval("Adi") %></a></h3>
                                    <p class="dolor"><%# Eval("Fiyat") %> <span>/ Per Person</span></p> 
                                    <span><i ></i><span><%# Eval("Detay") %></span> </span>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i><%# Eval("Sure") %></li>
                                        <li><i class="fas fa-map-marker-alt"></i><%# Eval("Lokasyon") %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>                                                        
                    </div>
        </form>
</asp:Content>
