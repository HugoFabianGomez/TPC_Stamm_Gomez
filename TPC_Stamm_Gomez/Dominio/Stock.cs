﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Stock : Producto
    {
        public int idStock { get; set; }
        public DateTime fechaVto { get; set; }
        public int cantidadIngresada { get; set; }
        public int stock { get; set; }
    }
}
