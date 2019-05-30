<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pocetna.aspx.cs" Inherits="pocetna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:right">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" /></div>
<div id="novosti" style="float:left;">
<h3>NOVOSTI</h3>
<h4>UEFA IZBACUJE MANČESTER SITI IZ LIGE ŠAMPIONA!</h4>

<p>Do UEFA je stigla informacija da je engleski tim <br /> kršio pravila finansijskog fer-pleja po kojem <br /> je jednom timu dozvoljeno da najviše bude u minusu <br /> od 30.000.000 evra tokom sezone, <br />a može i više ukoliko dobije specijalnu dozvolu <br /> evropske kuće fudbala, što Siti nije uradio.
</p>
</div>

<div id="video" style="float:right; padding-bottom:20px;">
<h3>POGLEDAJTE</h3>
<iframe width="560" height="315" src="https://www.youtube.com/embed/tY5stQvwkBA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<div id="about" style="background-color:#333; clear:both;">

<p style="color:white; float:left; margin-right:100px;" id="loganje"><strong>O NAMA</strong><br />Gambling d.o.o je osnovano 2019 godine. <br />
Gambling predstavlja sajt za online klađenje. <br />
 
Uplate na korisnički račun možete izvšiti u poslovnicama <br />
u gradu Tuzli, lokaciju možete pronaći u nastavku:
</p>


<p style="color:white; float:left;"><strong>KONTAKT</strong><br />
Email: gambling@hotmail.com<br />
Tel/Fax: 035/255-250
</p>


<p style="color:White; float:right;"><strong>PODRŠKA</strong><br />
Tehnička podrška korisnicima Vam <br />
je na raspolaganju 0/24. <br />
Za više informacija, pošaljite <br />
nam e-mail na: <br />
gambling@hotmail.com
</p>


<br />
<iframe src="https://www.google.com/maps/d/embed?mid=1iqo4UA05j8mtUzvPz7MTKabbnZA" width="100%" height="480"></iframe>
</div>
</asp:Content>

