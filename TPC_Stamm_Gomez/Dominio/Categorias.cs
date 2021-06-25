﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Categorias
    {
        public int id { get; set; }
        public string nombreCategoria { get; set; }

        public Categorias(string NombreCategoria)
        {
            nombreCategoria = NombreCategoria;
        }
        public Categorias(int Id, string NombreCategoria)
        {
            id = Id;
            nombreCategoria = NombreCategoria;
        }
    }
}
