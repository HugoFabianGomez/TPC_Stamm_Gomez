﻿using System;
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
                datos.setearConsulta(" SELECT P.ID CodProducto,M.NOMBRE Producto,PR.DESCRIPCION Presentacion,ISNULL(SUM(S.Stock),0) Stock," +
                                    "C.NOMBRECATEGORIA Sector from Productos P " +
                                   "INNER join StockProductos S on S.IDProducto = P.ID " +
                                    "inner join Marca M ON M.ID = P.IDMarca " +
                                    "INNER JOIN Presentacion PR ON PR.ID = P.IDPresentacion " +
                                    "inner join Categoria C on C.ID = P.IDCategoria " +
                                    "GROUP by  P.ID, M.NOMBRE, PR.DESCRIPCION, C.NOMBRECATEGORIA ");
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
    }
}