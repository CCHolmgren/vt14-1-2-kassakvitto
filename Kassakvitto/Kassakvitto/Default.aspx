<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="Main.css" rel="stylesheet" />
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Label Text="Total köpsumma" runat="server" />
    </div>
    <div>
        <asp:TextBox runat="server" ID="InputBox" Text="Köpsumma"/> kr
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="InputBox" ErrorMessage="Ange en total köpesumma större än 0."  Type="Double" Operator="GreaterThan" EnableClientScript="true" Display="Dynamic" ForeColor="Red" ValueToCompare="0"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputBox" ErrorMessage="Ange en total köpesumma." EnableClientScript="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Button ID="SendButton" Text="Beräkna rabatt" runat="server" OnClick="SendButton_Click" />
    </div>
        <asp:Panel ID="Kvitto" runat="server" Visible="false" CssClass="receiptcontainer">
            <div class="receiptitem"><asp:Label Text="Totalt" runat="server" /><asp:Label runat="server" ID="Total" CssClass="right"/></div>
            <div class="receiptitem"><asp:Label Text="Rabattsats" runat="server" /><asp:Label runat="server" ID="Rabattsats" CssClass="right"/></div>
            <div class="receiptitem"><asp:Label Text="Rabatt" runat="server" /><asp:Label runat="server" ID="Rabatt" CssClass="right"/></div>
            <div class="receiptitem"><asp:Label Text="Att betala" runat="server" /><asp:Label runat="server" ID="Pay" CssClass="right"/></div>
        </asp:Panel>
    </form>
    <script src="Main.js"></script>
</body>
</html>
