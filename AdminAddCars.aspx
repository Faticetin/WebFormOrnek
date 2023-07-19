<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="Araba_Satış_Sitesi.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
            <table class="nav-justified">
            <tr>
                <td style="width: 219px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 219px">Araba Modeli</td>
                <td>
                    <asp:TextBox ID="tboxModel" runat="server" Width="141px" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Araba Foto </td>
                <td>
                    <asp:TextBox ID="tboxPhoto" runat="server" Width="141px" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px; height: 22px">Araba Yakıt Tipi</td>
                <td style="height: 22px">
                    <asp:TextBox ID="tboxFuel" runat="server" Width="141px" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Açıklama</td>
                <td>
                    <asp:TextBox ID="tboxDesciription" runat="server" Height="112px" TextMode="MultiLine" Width="141px" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">Araç Satıcısı</td>
                <td>
                    <asp:TextBox ID="tboxSeller" runat="server" Width="141px" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">İletişim Telefon Numarası</td>
                <td>
                    <asp:TextBox ID="tboxContact" runat="server" Width="141px" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px; height: 22px;">Araç Fiyatı</td>
                <td style="height: 22px">
                    <asp:TextBox ID="tboxPice" runat="server" Width="141px" ReadOnly="True" Text='<%# Eval("CarPice") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 219px">&nbsp;</td>
                <td>
                   <a href="ApproveCars.aspx?id="'<%# Eval("CarlID") %>'"><div class="btn btn-danger">Onayla</div></a> 
                </td>
            </tr>
                <tr>
                    <td style="width: 219px; height: 20px;"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 219px; height: 20px;"></td>
                    <td style="height: 20px"></td>
                </tr>
                <tr>
                    <td style="width: 219px; border-bottom-style: solid; border-bottom-width: medium;">&nbsp;</td>
                    <td style="border-bottom-style: solid; border-bottom-width: medium">&nbsp;</td>
                </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
