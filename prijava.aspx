<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prijava.aspx.cs" Inherits="prijava" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 67%;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
            width: 262px;
        }
        .auto-style4 {
            height: 30px;
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>PRIJAVA</h3>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Korisnicko:<asp:TextBox ID="TextBox1" runat="server" Width="152px"></asp:TextBox>
            </td>
            <td class="auto-style4">Password:<asp:TextBox ID="TextBox2" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="165px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Unesite korisnicko!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Unesite password!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p>Ukoliko nemate račun, možete se registrovati <a href="Login.aspx">ovdje!</a></p>
</asp:Content>

