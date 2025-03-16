<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Presentation.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>
<body data-barba="wrapper" class="d-flex align-items-center justify-content-center vh-100 bg-light">
    <div data-barba="container" data-barba-namespace="fade">
        <form id="form1" runat="server">
            <div class="text-center bg-white p-5 rounded shadow">
                <h1>Bienvenido</h1>
                <asp:Button class="botones" ID="btnNotas" runat="server" OnClick="btnNotas_Click" Text="Agregar notas" />
                <br />
                <hr class="my-4 border-secondary" />
                <asp:Button CssClass="botones" ID="btnCredencial" runat="server" OnClick="btnCredencial_Click" Text="Agregar Credenciales" />
            </div>
        </form>
    </div>
    <!-- unpkg -->
    <script src="https://unpkg.com/@barba/core"></script>
    <script type="text/javascript" src="assets/custom.js"></script>
</body>
</html>
