<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="WebApplication1.Admin.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3 class="page-title">İletisim Sayfası </h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <form runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeProjeConnectionString %>" DeleteCommand="DELETE FROM [tblIletisim] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [tblIletisim] ([AdSoyad], [Mail], [konu], [Mesaj]) VALUES (@AdSoyad, @Mail, @konu, @Mesaj)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblIletisim]" UpdateCommand="UPDATE [tblIletisim] SET [AdSoyad] = @AdSoyad, [Mail] = @Mail, [konu] = @konu, [Mesaj] = @Mesaj WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AdSoyad" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="konu" Type="String" />
            <asp:Parameter Name="Mesaj" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AdSoyad" Type="String" />
            <asp:Parameter Name="Mail" Type="String" />
            <asp:Parameter Name="konu" Type="String" />
            <asp:Parameter Name="Mesaj" Type="String" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-borderless" AllowPaging="True" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
       </form>
</asp:Content>
