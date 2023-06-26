<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="WebApplication1.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Blog</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeProjeConnectionString %>" SelectCommand="SELECT * FROM [tblBlog] inner join tblBlogKategori on tblBlogKategori.id=tblBlog.KategoriId"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
                            <ItemTemplate>                             
                              <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="image/Blog/<%# Eval("Resim") %>" alt="">
                                <a href="#" class="blog_item_date">
                                    <h3><%# Eval("Tarih") %></h3>                                 
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="single-blog.html">
                                    <h2><%# Eval("Baslik") %></h2>
                                </a>
                                <p>That dominion stars lights dominion divide years for fourth have don't stars is that
                                    he earth it first without heaven in place seed it second morning saying.</p>
                                <ul class="blog-info-link">
                                    <li><a href="Blog.aspx"><i class="fa fa-user"></i><%# Eval("Adi") %></a></li>
                                  
                                </ul>
                            </div>
                        </article>  
                            </ItemTemplate>
                        </asp:DataList>
                           
                                              
                                                                            
                     
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                  
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Kategori</h4>
                            <ul class="list cat-list">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeProjeConnectionString %>" SelectCommand="SELECT * FROM [tblBlogKategori]"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <li>
                                    <a href="#" class="d-flex">
                                        <p>
                                            <%#Eval("Adi")%>
                                        </p>                                    
                                    </a>
                                </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                                           
                            </ul>
                        </aside>

                       


               

                    </div>
                </div>
          </div>
           
</asp:Content>
