<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cuentas.aspx.cs" Inherits="Presentation.cuentas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestión de Cuentas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center;">
            <h1>Gestión de Cuentas</h1>
            
            <h2>Agregar Categoría</h2>
            <asp:TextBox ID="txtNombreCategoria" runat="server" Placeholder="Nombre Categoría"></asp:TextBox>
            <asp:Button ID="btnAgregarCategoria" runat="server" Text="Agregar" OnClick="btnAgregarCategoria_Click" />
            <asp:GridView ID="gvCategorias" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="nombre" HeaderText="Categoría" />
                </Columns>
            </asp:GridView>
            
            <h2>Agregar Cuenta</h2>
            <asp:TextBox ID="txtNombreCuenta" runat="server" Placeholder="Nombre"></asp:TextBox>
            <asp:TextBox ID="txtUsuario" runat="server" Placeholder="Usuario"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" Placeholder="Contraseña"></asp:TextBox>
            <asp:DropDownList ID="ddlCategorias" runat="server"></asp:DropDownList>
            <asp:Button ID="btnAgregarCuenta" runat="server" Text="Agregar" OnClick="btnAgregarCuenta_Click" />
            
            <h2>Listado de Cuentas</h2>
            <asp:GridView ID="gvCuentas" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                    <asp:BoundField DataField="Categoria" HeaderText="Categoría" />
                </Columns>
            </asp:GridView>
            
            <br />
            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
        </div>
    </form>
</body>
</html>