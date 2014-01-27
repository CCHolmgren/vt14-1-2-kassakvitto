using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto
{
    public class Receipt
    {
        double _subtotal;
        double DiscountRate
        {
            get;
            set;
        }
        double MoneyOff
        {
            get;
            set;
        }
        double Subtotal
        {
            get;
            set;
        }
        double Total
        {
            get;
            set;
        }
        void Calculate(double subtotal)
        {

        }
        Receipt(double subtotal)
        {

        }
    }
}