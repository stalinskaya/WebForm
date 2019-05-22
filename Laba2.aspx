<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Button2_Click(object sender, EventArgs e)
    {
        double x = double.Parse(TextBox1.Text);
        double y = double.Parse(TextBox2.Text);
        double z;
        z = 1.06 * Math.Sqrt(x*(2*63710000+x));
        double res = y * 1000;
        if (z>=res) TextBox3.Text = "Это возможно! Так как " + z.ToString() + "м >= " + res.ToString();
        else TextBox3.Text = "Это невозможно! Так как " + z.ToString() + "м < " + res.ToString();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        double x = double.Parse(TextBox4.Text);
        double y = double.Parse(TextBox5.Text);
        double z;
        z = 1.06 * Math.Sqrt(x*(2*63710000+x));
        double res = y * 1000;
        if (z>=res) TextBox6.Text = "Это возможно! Так как " + z.ToString() + "м >= " + res.ToString();
        else TextBox6.Text = "Это невозможно! Так как " + z.ToString() + "м < " + res.ToString();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        double x = double.Parse(TextBox7.Text);
        double y = double.Parse(TextBox8.Text);
        double z;
        z = 1.06 * Math.Sqrt(x*(2*63710000+x));
        double res = y * 1000;
        if (z>=res) TextBox9.Text = "Это возможно! Так как " + z.ToString() + "м >= " + res.ToString();
        else TextBox9.Text = "Это невозможно! Так как " + z.ToString() + "м < " + res.ToString();
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="vopros"><p>Можно ли увидеть Великобританию из Франции?</p></div>
    <img class="maps" alt="" src="img\England.png" />
    <div class="otvet"><p>Кратчайшее расстояние между Англией и Францией в проливе Па-де-Кале составляет 32 км. Оно исчисляется от Южной косы, мыса, часто называемого также «Игольным ушком Англии» и находящегося в 4,8 км к северо-востоку от английского Лувра, до мыса Грине вблизи французского города Кале. А теперь ответим на вопрос...</p>
        <p class="proverka">Высота мыса</p>
        <p class="proverka">&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="166px" OnTextChanged="TextBox1_TextChanged" style="height: 21px"></asp:TextBox>
        </p>
        <p class="proverka">Расстояние</p>
        <p class="proverka"><asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="166px"></asp:TextBox>
        </p>
        <p class="proverka">Видимый горизонт</p>
        <p class="proverka">&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="283px" style="margin-left: 0px" Height="65px" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p class="proverka">
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#730011" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" OnClick="Button2_Click" style="margin-left: 0px" Text="Посчитать" Width="120px" />
        </p>
    </div>
    <div class="vopros"><p>Можно ли увидеть Африку из Европы?</p></div>
    <img class="maps" alt="" src="img\gibraltar.jpg" />
    <div class="otvet"><p>Гибралтарский пролив - это легендарный пролив, разделяющий континенты Европы и Африки, он соединяет Средиземное море с Атлантическим океаном. Кратчайшее расстояние между Испанией и Марокко составляет 19 км. А теперь ответим на вопрос...</p>
        <p class="proverka">Высота</p>
        <p class="proverka">&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="166px"></asp:TextBox>
        </p>
        <p class="proverka">Расстояние</p>
        <p class="proverka"><asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Width="166px"></asp:TextBox>
        </p>
        <p class="proverka">Видимый горизонт</p>
        <p class="proverka">&nbsp;<asp:TextBox ID="TextBox6" runat="server" Width="283px" style="margin-left: 0px" Height="65px" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p class="proverka">
            <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="#730011" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" style="margin-left: 0px" Text="Посчитать" Width="120px" OnClick="Button4_Click" />
        </p>
    </div>
    <div class="vopros"><p>Можно ли с самой высокой точки Крыма, горы Роман-Кош, увидеть Турцию?</p></div>
    <img class="maps" alt="" src="img\Turkey.jpg" />
    <div class="otvet"><p>Расстояние от Роман-Кош до крайней точки Турции составляет 265 км, а высота горы - 1 545 м. А теперь ответим на вопрос...</p>
        <p class="proverka">Высота горы</p>
        <p class="proverka">&nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="166px"></asp:TextBox>
        </p>
        <p class="proverka">Расстояние</p>
        <p class="proverka"><asp:TextBox ID="TextBox8" runat="server" style="margin-left: 0px" Width="166px"></asp:TextBox>
        </p>
        <p class="proverka">Видимый горизонт</p>
        <p class="proverka">&nbsp;<asp:TextBox ID="TextBox9" runat="server" Width="283px" style="margin-left: 0px" Height="65px" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p class="proverka">
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="#730011" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" style="margin-left: 0px" Text="Посчитать" Width="120px" OnClick="Button3_Click" />
        </p>
    </div>
</asp:Content>

