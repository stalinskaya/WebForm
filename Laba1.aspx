<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double x = double.Parse(TextBox1.Text);
        double y;
        y = Math.Log(x, 2);
        TextBox2.Text = y.ToString();        
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="formula"><p>Считает двоичный логарифм числа X</p>
        <p>Х =
<asp:TextBox ID="TextBox1" runat="server" Font-Names="Verdana" Width="175px" Height="16px"></asp:TextBox>
        </p>
        <p>Y =
<asp:TextBox ID="TextBox2" runat="server" Font-Names="Verdana" Width="175px"></asp:TextBox>
        </p>
        <p>
<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Verdana" Text="Посчитать" Width="212px" OnClick="Button1_Click" />
        </p>
        </div>
</asp:Content>

