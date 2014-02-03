using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Receipt receipt = new Receipt(new double());
                receipt.Calculate(double.Parse(InputBox.Text));

                Total.Text = String.Format("{0:c}",receipt.Subtotal);
                Rabattsats.Text = String.Format("{0}%",receipt.DiscountRate);
                Rabatt.Text = String.Format("{0:c}", receipt.MoneyOff);
                Pay.Text = String.Format("{0:c}", receipt.Total);
                Kvitto.Visible = true;
            }
        }
    }
}