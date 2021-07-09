using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class StockNegocio
    {
        public List<Stock> listaStock()
        {
            List<Stock> listado = new List<Stock>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta(" SELECT P.ID CodProducto,P.DESCRIPCION Descripcion, M.NOMBRE Producto,PR.DESCRIPCION Presentacion,ISNULL(SUM(S.Stock),0) Stock," +
                                    "C.NOMBRECATEGORIA Sector from Productos P " +
                                   "INNER join StockProductos S on S.IDProducto = P.ID " +
                                    "inner join Marca M ON M.ID = P.IDMarca " +
                                    "INNER JOIN Presentacion PR ON PR.ID = P.IDPresentacion " +
                                    "inner join Categoria C on C.ID = P.IDCategoria " +
                                    "GROUP by  P.ID, M.NOMBRE, PR.DESCRIPCION, C.NOMBRECATEGORIA,P.DESCRIPCION ");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Stock aux = new Stock();
                    aux.id = (int)datos.Lector["CodProducto"];
                    aux.marcas = new Marcas((string)datos.Lector["Producto"]);
                    aux.marcas.nombreMarcas = (string)datos.Lector["Producto"];
                    aux.stock = (int)datos.Lector["Stock"];
                    aux.categorias = new Categorias((string)datos.Lector["Sector"]);
                    aux.categorias.nombreCategoria = (string)datos.Lector["Sector"];
                    aux.presentacion = new Presentacion((string)datos.Lector["Presentacion"]);
                    aux.presentacion.descripcion =(string)datos.Lector["Presentacion"];
                    aux.descripcion = (string)datos.Lector["Descripcion"];

                    listado.Add(aux);
                    
                }

                return listado;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public List<Stock> List_Historial()
        {
            throw new NotImplementedException();
        }

        
        public Stock listaAgregarStock()
        {
            Stock listAgregarNuevo = new Stock();
            AccesoDatos AgregoStock = new AccesoDatos();

            try
            {
                listAgregarNuevo.idproducto = int.Parse("idproducto");
                listAgregarNuevo.fecha_Ingreso = DateTime.Parse("fecha_Ingreso");
                listAgregarNuevo.cantidadIngresada = int.Parse("cantidadIngresada");
                listAgregarNuevo.stock = int.Parse("stock");

                AgregoStock.(listAgregarNuevo);

                return listaAgregarStock();
            }
            catch (Exception ex)
            {
               // MessageBox.Show(ex.ToString()); tiene error

                throw ex;
            }

        }
        public void agregar(Stock agregoStock)
        {
            AccesoDatos nuevo = new AccesoDatos();
            try
            {
                string insertar = "values( '" + agregoStock.idproducto + "' , '" + agregoStock.fecha_Ingreso + "' , '" + agregoStock.cantidadIngresada + "' , '" + agregoStock.stock + "')";
                nuevo.setearConsulta("insert into StockProductos(idproducto, FECHA_Ingreso, CANTIDAAD, Stock)" + insertar);

            }
            catch (Exception)
            {

                throw;
            }
        }


    }
}
