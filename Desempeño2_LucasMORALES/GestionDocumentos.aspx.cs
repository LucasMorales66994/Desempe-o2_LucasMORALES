using System;
using System.IO;
using System.Web;
using System.Web.UI;

namespace Desempeño2_LucasMORALES
{
    public partial class GestionDocumentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("Registro.aspx");
                return;
            }

            lblUsuarioSesion.Text = Session["Usuario"].ToString() + " (" + Session["NombreCompleto"].ToString() + ")";

            if (Request.Cookies["ClaveCliente"] != null)
            {
                string claveGuardada = Request.Cookies["ClaveCliente"].Value;
                lblEstadoCookie.Text = "ACTIVA";
            }
            else
            {
                lblEstadoCookie.Text = "INACTIVA";
            }
        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            if (fileDocumento.HasFile)
            {
                try
                {
                    string nombreArchivo = Path.GetFileName(fileDocumento.FileName);

                    string carpetaDestino = Server.MapPath("~/documentos/");

                    if (!Directory.Exists(carpetaDestino))
                    {
                        Directory.CreateDirectory(carpetaDestino);
                    }

                    string rutaCompleta = Path.Combine(carpetaDestino, nombreArchivo);

                    if (File.Exists(rutaCompleta))
                    {
                        lblMensaje.ForeColor = System.Drawing.Color.Red;
                        lblMensaje.Text = "[1]ERROR: YA EXISTE UN DOCUMENTO CON ESE NOMBRE '" + nombreArchivo + "' . CAMBIE EL NOMBRE PARA SUBIRLO";
                        pnlDetalles.Visible = false;
                    }
                    else
                    {
                        fileDocumento.SaveAs(rutaCompleta);

                        lblMensaje.ForeColor = System.Drawing.Color.Green;
                        lblMensaje.Text = "DOCUMENTO GUARDADO Y SUBIDO CORRECTAMENTE!";

                        
                        lblNombreArchivo.Text = fileDocumento.FileName;
                        lblTamanio.Text = fileDocumento.PostedFile.ContentLength.ToString() + " BYTES";
                        lblTipo.Text = fileDocumento.PostedFile.ContentType;

                        pnlDetalles.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "[2] ERROR:OCURRIÓ ALGO AL INTENTAR SUBIRLO: " + ex.Message;
                    pnlDetalles.Visible = false;
                }
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "[3] ERROR: POR FAVOR, SELECCIONE UN ARCHIVO HACIENDO CLIC EN 'EXAMINAR' O 'EXPLORAR'.";
                pnlDetalles.Visible = false;
            }
        }
    }
}