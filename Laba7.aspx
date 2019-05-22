<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool pro = false;
        int k;
        int i;
        for (i = 2; i < Convert.ToInt64(TextBox1.Text); i++) {
            pro = true;
            for (k = 1; k < i; k++) {
                if (((i % k) == 0) && (k != 1)) pro = false;
            }
            if (pro) TextBox2.Text += i + "\t";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox1.Text = "";
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Генерация простых чисел</h1>
    <p>
        &nbsp;</p>
    <p>
        Выберите диапазон поиска простых чисел</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" style="margin-top: 0px" Text="Сгенерировать" Width="138px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Результат</p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" Height="223px" TextMode="MultiLine" Width="752px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Очистить" />
    </p>
</asp:Content>

