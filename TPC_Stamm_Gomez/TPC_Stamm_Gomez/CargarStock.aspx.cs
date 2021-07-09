using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TPC_Stamm_Gomez
{
    public partial class CargarStock : Page
    {
        public List<Stock> agregar;
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarStock conexionAgregar = new CargarStock();
            try
            {
                agregar = conexionAgregar.listaAgregarStock();
            }
            catch (Exception ex)
            {
                Session.Add("Error en AGREGARSTOCK", ex.ToString());

                Response.Redirect("Error.aspx");

            }
        }
    }
}