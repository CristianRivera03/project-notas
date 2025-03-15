<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Presentation.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bienvenido </h1>
        </div>
        <asp:Button ID="btnNotas" runat="server" OnClick="btnNotas_Click" Text="Agregar notas" />
        <p>
            <asp:Button ID="btnCredencial" runat="server" OnClick="btnCredencial_Click" Text="Agregar Credenciales" />
        </p>
    </form>
</body>
</html>
