<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 631px;
        }
        .style11
        {
            width: 225px;
        }
        .style12
        {
            width: 631px;
            height: 29px;
        }
        .style13
        {
            width: 225px;
            height: 29px;
        }
        .style14
        {
            width: 200px;
            text-align: right;
        }
        .style15
        {
            width: 200px;
            height: 29px;
            text-align: right;
        }
        .style16
        {
            width: 224px;
            text-align: justify;
        }
        .style17
        {
            width: 224px;
            height: 29px;
            text-align: justify;
        }
        .auto-style1 {
            width: 471px;
        }
        .auto-style2 {
            width: 471px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left; width: 646px;">
<h3>REGISTRACIJA</h3>
    <table class="style9">
        <tr>
            <td class="style14">
                Ime:</td>
            <td class="style16">
                <asp:TextBox ID="tbIme" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbIme" ErrorMessage="Unesite ime!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Prezime:</td>
            <td class="style16">
                <asp:TextBox ID="tbPrezime" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbPrezime" ErrorMessage="Unesite prezime!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Email:</td>
            <td class="style17">
                <asp:TextBox ID="tbEmail" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="tbEmail" ErrorMessage="Unesite Email!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Korisničko:</td>
            <td class="style16">
                <asp:TextBox ID="tbKorisnicko" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="tbKorisnicko" ErrorMessage="Unesite korisničko!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Password:</td>
            <td class="style16">
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="tbPassword" ErrorMessage="Unesite password!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbs&nbsp;</td>
            <td class="style16">
                <input id="Reset1" type="reset" value="reset" /></td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" Text="Registracija" Width="166px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
 </div>

 <div style="float:right;">
 <h3>DRAGI KORISNICI></h3>
 <p>Prilikom registracije dobijate bonus <br />
 na Vašem računu u iznosu od: 10KM. <br />
 Za svaku treću uplatu na račun <br />
 dobijate bonus u iznosu od 50% od uplate.</p>
 </div>

</asp:Content>

