using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Presentation
{
    public partial class cuentas : System.Web.UI.Page
    {
        private NCuentas nCuentas = new NCuentas();
        private NCategorias nCategorias = new NCategorias();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCategorias();
                CargarCuentas();
            }
        }

        private void CargarCategorias()
        {
            gvCategorias.DataSource = nCategorias.GetCategorias();
            gvCategorias.DataBind();

            ddlCategorias.DataSource = nCategorias.GetCategorias();
            ddlCategorias.DataTextField = "nombre";
            ddlCategorias.DataValueField = "id";
            ddlCategorias.DataBind();
        }

        private void CargarCuentas()
        {
            gvCuentas.DataSource = nCuentas.GetCuentas();
            gvCuentas.DataBind();
        }

        protected void btnAgregarCategoria_Click(object sender, EventArgs e)
        {
            nCategorias.InsertCategoria(txtNombreCategoria.Text);
            CargarCategorias();
            txtNombreCategoria.Text = "";
        }

        protected void btnAgregarCuenta_Click(object sender, EventArgs e)
        {
            int idCategoria = Convert.ToInt32(ddlCategorias.SelectedValue);
            nCuentas.InsertCuenta(txtNombreCuenta.Text, txtUsuario.Text, txtPassword.Text, idCategoria);
            CargarCuentas();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}