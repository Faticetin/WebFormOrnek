<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="Araba_Satış_Sitesi.ListCars" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td style="width: 623px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 623px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 623px">
                            <asp:Image ID="Image1" runat="server" Height="371px" ImageUrl='<%# Eval("CarPhoto") %>' Width="924px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 623px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuelType") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 623px">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("CarDescription") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 623px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 623px">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarPice") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>


