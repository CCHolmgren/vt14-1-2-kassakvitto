using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto
{
    public class Receipt
    {
        double _subtotal;

        public double DiscountRate
        {
            get;
            private set;
        }
        public double MoneyOff
        {
            get;
            private set;
        }
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            private set
            {
                if (value <= 0)
                    throw new ArgumentOutOfRangeException();
                _subtotal = value;
            }
        }
        public double Total
        {
            get;
            private set;
        }
        public void Calculate(double subtotal)
        {
            if(subtotal < 500)
                DiscountRate = 0;
            else if (subtotal < 1000)
                DiscountRate = 5;
            else if (subtotal < 5000)
                DiscountRate = 10;
            else
                DiscountRate = 15;

            MoneyOff = subtotal * (DiscountRate / 100);
            Subtotal = subtotal;
            Total = subtotal - MoneyOff;
        }
        public Receipt(double subtotal)
        {

        }
    }
}