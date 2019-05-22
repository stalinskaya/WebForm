using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Numerics;

public partial class lb8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        BigInteger.Pow(UInt64.MaxValue, 3);
        int p = Convert.ToInt32(TextBox1.Text);
        int g = Convert.ToInt32(TextBox2.Text);
        int alice = Convert.ToInt32(TextBox3.Text);
        int bob = Convert.ToInt32(TextBox4.Text);
        BigInteger a = BigInteger.Pow(p, alice) % g;
        BigInteger b = BigInteger.Pow(p, bob) % g;
        TextBox6.Text = a.ToString();
        TextBox7.Text = b.ToString();
        BigInteger key1 =BigInteger.Pow(a, bob) % g;
        BigInteger key2 = BigInteger.Pow(b, alice) % g;
        Label2.Text = key1.ToString();
        Label1.Text = key2.ToString();
    }
}