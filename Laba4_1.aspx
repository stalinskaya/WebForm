<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    Char[] letters = new char[] { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text.ToString();
        string stepen = Convert.ToString(TextBox2.Text);

        for (int i = 0; i < a.Length; i++)
        {
            if (a[i] == ' ')
            {
                TextBox3.Text += " ";
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
                TextBox3.Text += a[i];
            }
            else
            {
                int j = i % stepen.Length;
                char temp1 = stepen[j];
                int n1 = 0;
                for (int k = 0; k < letters.Length; k++)
                {
                    if (temp1 == letters[k])
                    {
                        n1 = k;
                        break;
                    }
                }
                int b = n + n1+1;
                while (b > 35)
                {
                    b -= 36;
                }
                TextBox3.Text += letters[b];
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string a = TextBox3.Text.ToString();
        string stepen = Convert.ToString(TextBox2.Text);

        for (int i = 0; i < a.Length; i++)
        {
            if (a[i] == ' ')
            {
                TextBox4.Text += " ";
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
                TextBox4.Text += a[i];
            }
            else
            {
                int j = i % stepen.Length;
                char temp1 = stepen[j];
                int n1 = 0;
                for (int k = 0; k < letters.Length; k++)
                {
                    if (temp1 == letters[k])
                    {
                        n1 = k;
                        break;
                    }
                }
                int b = n - n1-1;
                while (b < 0)
                {
                    b += 35;
                }
                TextBox4.Text += letters[b];
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Шифрование словом</h1>
<p>
        Исходный текст</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="89px" TextMode="MultiLine" Width="490px"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Зашифровать" Font-Bold="True" Font-Names="Century Gothic" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Зашифрованный текст</p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" Height="97px" TextMode="MultiLine" Width="490px"></asp:TextBox>
    </p>
    <p>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Дешифрование" Font-Bold="True" Font-Names="Century Gothic" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Дешифрованный текст</p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" Height="131px" TextMode="MultiLine" Width="487px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

