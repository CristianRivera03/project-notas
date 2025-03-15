using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentation
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNotas_Click(object sender, EventArgs e)
        {
            Response.Redirect("notas.aspx");
        }

        protected void btnCredencial_Click(object sender, EventArgs e)
        {
            Response.Redirect("cuentas.aspx");
        }
    }
}