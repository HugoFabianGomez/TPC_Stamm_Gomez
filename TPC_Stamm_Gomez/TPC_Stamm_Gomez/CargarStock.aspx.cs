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
        protected void Page_Load(object sender, EventArgs e)
        {

            
            //CargarStock conexionAgregar = new CargarStock();
            //try
            //{
            //    agregar = conexionAgregar.listaAgregarStock();
            //}
            //catch (Exception ex)
            //{
            //    Session.Add("Error en AGREGARSTOCK", ex.ToString());

            //    Response.Redirect("Error.aspx");

            //}
        }

        protected void Unnamed_Click(object sender, EventArgs e)//btn_Agregar
        {
            Stock nuevoStock = new Stock();
            StockNegocio stockNegocio = new StockNegocio();
            try
            {
                nuevoStock.id = int.Parse(text_idproducto.Text);
                nuevoStock.fecha_Ingreso = DateTime.Parse(text_fecha_ingreso.Text);
                nuevoStock.cantidadIngresada = int.Parse(text_cantidad.Text);
                nuevoStock.stock = int.Parse(text_stock.Text);

                stockNegocio.agregar(nuevoStock); //conexion
                //close();

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}