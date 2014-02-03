<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Kassakvitto</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Label Text="Total köpsumma" runat="server" />
    </div>
    <div>
        <asp:TextBox runat="server" ID="InputBox" /> kr
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="InputBox" ErrorMessage="RequiredFieldValidator" EnableClientScript="true"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="InputBox" ErrorMessage="CompareValidator"  Type="Double" Operator="DataTypeCheck" EnableClientScript="true"></asp:CompareValidator>
    </div>
    <div>
        <asp:Button Text="Beräkna rabatt" runat="server" />
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
