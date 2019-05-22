<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    //public int n;

    //private void rand()
    //{
    //    Random rnd = new Random();

    //}

    protected void Button4_Click(object sender, EventArgs e)
    {
        string alph = "qwertyuiopasdfghjklzxcvbnm ";
        Random rnd = new Random();
        for (int i =0; i<150;i++)
        {
            TextBox1.Text += alph[rnd.Next(0, alph.Length)];
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string pattern = "[^a-zа-я\\s]";
        string a = TextBox1.Text.ToString().ToLower();
        string a1 = (Regex.Replace(a, pattern, string.Empty));
        Random rnd = new Random();
        for (int i =0; i<150;i++)
        {
            TextBox2.Text += a1[rnd.Next(0, a1.Length)];
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string pattern = "[^a-zа-я\\s]";
        string a = TextBox1.Text.ToString().ToLower();
        string a1 = (Regex.Replace(a, pattern, string.Empty));
        List<string> a2 = new List<string>();
        for (int i = 0; i<a1.Length - 1; i++)
        {
            a2.Add(a1.Substring(i, 2));
        }
        Random rnd = new Random();
        for (int i =0; i<150;i++)
        {
            TextBox2.Text += a2[rnd.Next(0, a2.Count)];
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string pattern = "[^a-zа-я\\s]";
        string a = TextBox1.Text.ToString().ToLower();
        string a1 = (Regex.Replace(a, pattern, string.Empty));
        List<string> a2 = new List<string>();
        for (int i = 0; i<a1.Length - 2; i++)
        {
            a2.Add(a1.Substring(i, 3));
        }
        Random rnd = new Random();
        for (int i =0; i<150;i++)
        {
            TextBox2.Text += a2[rnd.Next(0, a2.Count)];
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Приближение нулевого, первого, второго, третьего порядков</h1>
    <p>&nbsp;</p>
    <p>Вводите текст в первое поле и получайте результат во втором!</p>
    <asp:TextBox ID="TextBox1" runat="server" Height="182px" TextMode="MultiLine" Width="401px"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Height="182px" TextMode="MultiLine" Width="388px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Нулевой" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Первый" OnClick="Button1_Click" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" />
&nbsp;&nbsp;&nbsp;
&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Второй" OnClick="Button2_Click" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" />
&nbsp;&nbsp;&nbsp;
&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Третий" OnClick="Button3_Click" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" />
&nbsp;
    <br />
    <br />
</asp:Content>

