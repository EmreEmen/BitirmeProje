<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="WebApplication1.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Hakkımızda</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeProjeConnectionString %>" SelectCommand="SELECT [Baslik], [Ozet] FROM [tblKurumsal]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            
                            <div class="blog_details">
                                <a class="d-inline-block" href="single-blog.html">
                                    <h2><%# Eval("Baslik") %></h2>
                                </a>
                                <br /><br />
                                <p><%# Eval("Ozet") %></p>
                               
                            </div>
        </ItemTemplate>
    </asp:DataList>
                                                        
</asp:Content>
