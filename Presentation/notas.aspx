<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notas.aspx.cs" Inherits="Presentation.notas" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <title>Gestión de Notas</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Gestión de Notas</h2>

        <label for="txtTitulo">Título:</label>
        <asp:TextBox ID="txtTitulo" runat="server" required></asp:TextBox>
        <br />

        <label for="txtDescripcion">Descripción:</label>
        <asp:TextBox ID="txtDescripcion" runat="server" required></asp:TextBox>
        <br />

        <label for="txtFecha">Fecha:</label>
        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
        <br />

        <label for="txtHora">Hora:</label>
        <asp:TextBox ID="txtHora" runat="server" TextMode="Time"></asp:TextBox>
        <br />

        <asp:Button ID="btnAgregarNota" runat="server" Text="Agregar Nota" OnClick="btnAgregarNota_Click" />

        <h3>Lista de Notas</h3>
        <asp:GridView ID="gvNotas" runat="server" AutoGenerateColumns="False" OnRowCommand="gvNotas_RowCommand">
            <Columns>
                <asp:BoundField DataField="titulo" HeaderText="Título" />
                <asp:BoundField DataField="descripcion" HeaderText="Descripción" />
                <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                <asp:BoundField DataField="hora" HeaderText="Hora" />
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>