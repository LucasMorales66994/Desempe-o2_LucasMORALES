using System;
using System.Web;
using System.Web.UI;

namespace Desempeño2_LucasMORALES
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
             if (this.IsValid)
            {
                 HttpCookie cookieClave = new HttpCookie("ClaveCliente", this.txtClave.Text);
                cookieClave.Expires = DateTime.Now.AddDays(7); 
                this.Response.Cookies.Add(cookieClave);

                this.Session["Usuario"] = this.txtUsuario.Text;
                this.Session["NombreCompleto"] = this.txtNombreApellido.Text;
                this.Session["Correo"] = this.txtCorreo.Text;

                this.Response.Redirect("GestionDocumentos.aspx");
            }
        }
    }
}