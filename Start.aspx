<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dobrodosli</title>
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
</head>
<body>
    <form id="form1" runat="server" style="background-color:gray">
        
        <div class="logovanje">
             <h3 style="background-color:teal; color:white">PRIJAVA</h3>
    <table class="auto-style1" >
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
    <p style="background-color:teal; color:white;">Ukoliko nemate račun, možete se registrovati <a href="Login.aspx" style="text-decoration:none; color:black;">ovdje!</a></p>
        </div>
       
           
    </form>
</body>
</html>
