<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    Char[] letters = new char[] { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string a = TextBox2.Text.ToString();
        int stepen = Convert.ToInt32(TextBox4.Text);

        for (int i =0; i<a.Length; i++)
        {
            if (a[i] == ' ')
            {
                TextBox3.Text += " ";
                continue;
            }
            char temp = a[i];
            int n = 0;
            bool change = false;
            for (int j =0; j<letters.Length; j++)
            {
                change = false;
                if (temp == letters[j])
                {
                    n = j;
                    change = true;
                    break;
                }
            }
            if (change == false)
            {
                TextBox3.Text += a[i];
            }
            else
            {
                int b = n - stepen;
                while (b<0)
                {
                    b += 36;
                }
                TextBox3.Text += letters[b];
            }
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text.ToString();
        int stepen = Convert.ToInt32(TextBox4.Text);

        for (int i = 0; i < a.Length; i++)
        {
            if (a[i] == ' ')
            {
                TextBox2.Text += " ";
                continue;
            }
            char temp = a[i];
            int n = 0;
            bool change = false;
            for (int j = 0; j < letters.Length; j++)
            {
                change = false;
                if (temp == letters[j])
                {
                    n = j;
                    change = true;
                    break;
                }
            }
            if (change == false)
            {
                TextBox2.Text += a[i];
            }
            else
            {
                int b = n + stepen;
                while (b > 35)
                {
                    b -= 36;
                }
                TextBox2.Text += letters[b];
            }
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <h1>Шифрование смещением</h1>
    <p>Исходный текст</p>
    <asp:TextBox ID="TextBox1" runat="server" Height="119px" TextMode="MultiLine" Width="557px"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="66px"></asp:TextBox>
    &nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Зашифровать" Height="32px" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Small" />
    &nbsp;<br />
<br />
    <p>Зашифрованный текст</p>
    <asp:TextBox ID="TextBox2" runat="server" Height="120px" TextMode="MultiLine" Width="562px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Дешифровать" OnClick="Button2_Click" Font-Bold="True" Font-Names="Century Gothic" />
    <br />
    <br />
    <p>Дешифрованный текст</p>
    <asp:TextBox ID="TextBox3" runat="server" Height="163px" TextMode="MultiLine" Width="572px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Очистить" Height="32px" Font-Bold="True" Font-Names="Century Gothic" />
    <br />
    <br />
    </asp:Content>

