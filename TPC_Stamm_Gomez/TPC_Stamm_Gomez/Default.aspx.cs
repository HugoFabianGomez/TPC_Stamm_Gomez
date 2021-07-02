using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPC_Stamm_Gomez
{
    public partial class _Default : Page
    {
        public List<Stock> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            StockNegocio conexionBase = new StockNegocio();

            try
            {
                lista = conexionBase.listaStock ();//va a la base y me trae todo el stock
                
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void redireccionClick(object sender, EventArgs e)
        {
           
        }
    }
}