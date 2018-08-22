using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FacturadorDigital.ASMX
{
    public class Producto
    {
        public int Cod_producto { get; set; }
        public String Name_Product { get; set; }
        public int Qty_Stock { get; set; }
        public float Unit_Price { get; set; }
        public float Tax { get; set; }
        public float Pre_Total { get; set; }
        public float Gain { get; set; }
        public float Total_Sale { get; set; }


        public Producto()
        {
        }

        public Producto(int cod_producto, string name_Product, int qty_Stock, float unit_Price, float tax, float pre_Total, float gain, float total_Sale)
        {
            Cod_producto = cod_producto;
            Name_Product = name_Product;
            Qty_Stock = qty_Stock;
            Unit_Price = unit_Price;
            Tax = tax;
            Pre_Total = pre_Total;
            Gain = gain;
            Total_Sale = total_Sale;
        }

    }
}