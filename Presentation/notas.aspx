<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notas.aspx.cs" Inherits="Presentation.notas" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <title>Gestión de Notas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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

        .sidebar h4 {
            color: white;
            text-align: center;
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
<body data-barba="wrapper" class="bg-light">
    <div data-barba="container" data-barba-namespace="fade">
        <form id="form1" runat="server">

            <!-- Sidebar -->
            <div class="sidebar">
                <h4>Menú</h4>
                <a href="notas.aspx">To Do</a>
                <a href="cuentas.aspx">Cuentas</a>
                <a href="index.aspx">Salir</a>
            </div>

            <!-- Contenido Principal -->
            <div class="content">
                <div class="container mt-4">
                    <div class="row">
                        <!-- Panel de Registro -->
                        <div class="col-md-4">
                            <div class="card bg-white p-4 rounded shadow">
                                <h4 class="mb-3 text-center">Agregar Nota</h4>

                                <div class="mb-3">
                                    <label for="txtTitulo" class="form-label">Título:</label>
                                    <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control" required></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="txtDescripcion" class="form-label">Descripción:</label>
                                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" required></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="txtFecha" class="form-label">Fecha:</label>
                                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="txtHora" class="form-label">Hora:</label>
                                    <asp:TextBox ID="txtHora" runat="server" TextMode="Time" CssClass="form-control"></asp:TextBox>
                                </div>

                                <div class="d-grid">
                                    <asp:Button class="botones" ID="btnAgregarNota" runat="server" Text="Agregar Nota" OnClick="btnAgregarNota_Click" />
                                </div>
                            </div>
                        </div>

                        <!-- Panel de Lista de Notas -->
                        <div class="col-md-8">
                            <div class="card bg-white p-4 rounded shadow">
                                <h4 class="mb-3 text-center">Lista de Notas</h4>

                                <asp:GridView ID="gvNotas" runat="server" AutoGenerateColumns="False" CssClass="table table-striped"
                                    OnRowCommand="gvNotas_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="titulo" HeaderText="Título" />
                                        <asp:BoundField DataField="descripcion" HeaderText="Descripción" />
                                        <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                                        <asp:BoundField DataField="hora" HeaderText="Hora" />
                                        <asp:TemplateField HeaderText="Acciones">
                                            <ItemTemplate>
                                                <asp:Button class="botones" ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar"
                                                    CommandArgument='<%# Eval("id") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- unpkg -->
        <script src="https://unpkg.com/@barba/core"></script>

        <!-- jsdelivr -->
        <script src="https://cdn.jsdelivr.net/npm/@barba/core"></script>
        <script type="text/javascript" src="assets/custom.js"></script>
    </div>
</body>
</html>
