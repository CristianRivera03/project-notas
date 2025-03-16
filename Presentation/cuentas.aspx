<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cuentas.aspx.cs" Inherits="Presentation.cuentas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestión de Cuentas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
     <link rel="stylesheet" type="text/css" href="styles/style.css" />

    
    <style>
        /* Sidebar fija */
        .sidebar {
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #343a40;
            padding-top: 20px;
        }

        /* Estilo de los enlaces de la sidebar */
        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover {
            background-color: #495057;
        }

        /* Ajuste del contenido principal */
        .content {
            margin-left: 260px;
            padding: 20px;
        }
    </style>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="sidebar">
            <h4 class="text-center text-light">Menú</h4>
            <a href="notas.aspx">To Do</a>
            <a href="cuentas.aspx">Cuentas</a>
            <a href="index.aspx">Salir</a>
        </div>

        <div class="content">
            <div class="container mt-4">
                <h1 class="text-center">Gestión de Cuentas</h1>
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="card shadow-sm mb-4">
                            <div class="card-body">
                                <h2 class="h5 text-center">Agregar Categoría</h2>
                                <div class="mb-3">
                                    <asp:TextBox ID="txtNombreCategoria" runat="server" CssClass="form-control" Placeholder="Nombre Categoría"></asp:TextBox>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="btnAgregarCategoria" runat="server" Text="Agregar" CssClass="botones" OnClick="btnAgregarCategoria_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="card shadow-sm mb-4">
                            <div class="card-body">
                                <h2 class="h5 text-center">Agregar Cuenta</h2>
                                <div class="mb-2">
                                    <asp:TextBox ID="txtNombreCuenta" runat="server" CssClass="form-control" Placeholder="Nombre"></asp:TextBox>
                                </div>
                                <div class="mb-2">
                                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" Placeholder="Usuario"></asp:TextBox>
                                </div>
                                <div class="mb-2">
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-select"></asp:DropDownList>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="btnAgregarCuenta" runat="server" Text="Agregar" CssClass="botones" OnClick="btnAgregarCuenta_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="card shadow-sm mb-4">
                    <div class="card-body">
                        <h2 class="h5 text-center">Listado de Categorías</h2>
                        <asp:GridView ID="gvCategorias" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="nombre" HeaderText="Categoría" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                
                <div class="card shadow-sm mb-4">
                    <div class="card-body">
                        <h2 class="h5 text-center">Listado de Cuentas</h2>
                        <asp:GridView ID="gvCuentas" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                                <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                                <asp:BoundField DataField="Categoria" HeaderText="Categoría" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
