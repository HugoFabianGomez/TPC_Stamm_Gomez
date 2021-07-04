using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Negocio;

namespace Negocio
{
    public class HistorialNegocio
    {
        public List<Stock> List_Historial()
        {
            List<Stock> historial = new List<Stock>();
            AccesoDatos dato = new AccesoDatos();

            try
            {
                dato.setearConsulta("select s.ID, p.DESCRIPCION, s.FECHA_Ingreso, s.CANTIDAD, s.Stock from StockProductos s inner join Productos p on s.idproducto=p.ID");
                dato.ejecutarLectura();

                while (dato.Lector.Read())
                {
                    Stock aux2 = new Stock();
                    aux2.id = (int)dato.Lector["ID"];
                    aux2.descripcion = (string)dato.Lector["DESCRIPCION"];
                    aux2.fecha_Ingreso = (DateTime)dato.Lector["FECHA_Ingreso"];
                    aux2.cantidadIngresada = (int)dato.Lector["CANTIDAD"];
                    aux2.stock = (int)dato.Lector["Stock"];

                    historial.Add(aux2);
                }
                return historial;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                dato.cerrarConexion();
            }

        }
    }
}
