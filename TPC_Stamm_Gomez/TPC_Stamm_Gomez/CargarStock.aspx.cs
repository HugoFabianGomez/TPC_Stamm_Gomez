using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ApplicationServices;
using System.Windows.Input;
using Negocio;
using Dominio;

namespace TPC_Stamm_Gomez
{
    public partial class CargarStock : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
        }

        public void btn_Modificar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_Eliminar_Click(object sender, EventArgs e)
        {

        }

        public void btn_Agregar_Click(object sender, EventArgs e)
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
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                //Stock.close();
            }
        }
    }
}