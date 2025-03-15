using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Presentation
{
    public partial class notas : System.Web.UI.Page
    {
        NNotas objNNotas = new NNotas();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarNotas();
            }
        }

        protected void btnAgregarNota_Click(object sender, EventArgs e)
        {
            try
            {
                string titulo = txtTitulo.Text.Trim();
                string descripcion = txtDescripcion.Text.Trim();
                DateTime fecha = Convert.ToDateTime(txtFecha.Text);
                DateTime hora = Convert.ToDateTime(txtHora.Text);

                if (string.IsNullOrEmpty(titulo) || string.IsNullOrEmpty(descripcion))
                {
                    return; 
                }

                objNNotas.InsertNota(titulo, descripcion, fecha, hora);
                CargarNotas();
            }
            catch (Exception ex)
            {
            }
        }

        protected void gvNotas_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                objNNotas.DeleteNota(id);
                CargarNotas();
            }
        }

        private void CargarNotas()
        {
            gvNotas.DataSource = objNNotas.GetNotas();
            gvNotas.DataBind();
        }
    }
}