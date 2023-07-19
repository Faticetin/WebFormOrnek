<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="addcars.aspx.cs" Inherits="Araba_Satış_Sitesi.addcars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 219px">Araba Markası</td>
                <td>
                    <asp:DropDownList ID="combobox" runat="server" Height="34px" Width="147px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Araba Modeli</td>
                <td>
                    <asp:TextBox ID="tboxModel" runat="server" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Araba Foto Linki</td>
                <td>
                    <asp:TextBox ID="tboxPhoto" runat="server" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px; height: 22px">Araba Yakıt Tipi</td>
                <td style="height: 22px">
                    <asp:TextBox ID="tboxFuel" runat="server" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Açıklama</td>
                <td>
                    <asp:TextBox ID="tboxDesciription" runat="server" Height="112px" TextMode="MultiLine" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Araç Satıcısı</td>
                <td>
                    <asp:TextBox ID="tboxSeller" runat="server" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">İletişim Telefon Numarası</td>
                <td>
                    <asp:TextBox ID="tboxContact" runat="server" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Araç Fiyatı</td>
                <td>
                    <asp:TextBox ID="tboxPice" runat="server" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="İlanı Girin" Width="153px" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
