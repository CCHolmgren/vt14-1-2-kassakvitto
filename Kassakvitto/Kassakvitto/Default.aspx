<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Label Text="Total köpsumma" runat="server" />
    </div>
    <div>
        <asp:TextBox runat="server" ID="InputBox" Text="Köpsumma"/> kr
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputBox" ErrorMessage="RequiredFieldValidator" EnableClientScript="true"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="InputBox" ErrorMessage="CompareValidator"  Type="Double" Operator="DataTypeCheck" EnableClientScript="true"></asp:CompareValidator>
    </div>
    <div>
        <asp:Button ID="SendButton" Text="Beräkna rabatt" runat="server" OnClick="SendButton_Click" />
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Panel ID="Kvitto" runat="server" Visible="false">
            <div><asp:Label Text="Totalt" runat="server" /><asp:Label Text="" runat="server" ID="Total"/></div>
            <div><asp:Label Text="Rabattsats" runat="server" /><asp:Label Text="" runat="server" ID="Rabattsats"/></div>
            <div><asp:Label Text="Rabatt" runat="server" /><asp:Label Text="" runat="server" ID="Rabatt"/></div>
            <div><asp:Label Text="Att betala" runat="server" /><asp:Label Text="" runat="server" ID="Pay"/></div>
        </asp:Panel>
    </form>
    <script src="Main.js"></script>
</body>
</html>
