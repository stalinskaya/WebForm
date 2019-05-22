<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    string state = null;


    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton2.Checked = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int s_s = Convert.ToInt32((Convert.ToDouble(TextBox1.Text))*100);
        int s_r = 100 - s_s;
        int r_r = Convert.ToInt32((Convert.ToDouble(TextBox4.Text))*100);
        int r_s = 100 - r_r;


        if (RadioButton1.Checked == true) {
            state = "sun";
        }
        else
        {
            state = "rain";
        }

        Random rnd = new Random();
        for (int i = 0; i<30; i++)
        {
            int t = rnd.Next(0, 100);
            if (state.Equals("sun"))
            {
                if (t<s_s)
                {
                    state = "sun";
                }
                else
                {
                    state = "rain";
                }
            }
            else if (state.Equals("rain"))
            {
                if (t<r_r)
                {
                    state = "rain";
                }
                else
                {
                    state = "sun";
                }
            }
            TextBox5.Text += "Day " + i + " " + state + "; ";
        }
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        RadioButton1.Checked = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Прогноз погоды</h1>
    <p>&nbsp;</p>
    Sun&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rain<br />
    Sun
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
    <br />
    Rain<asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Sun" ViewStateMode="Enabled" />
    <br />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Rain" OnCheckedChanged="RadioButton2_CheckedChanged" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Сделать прогноз погоды" Font-Size="Medium" />
    <br />
    <br />
    <asp:TextBox ID="TextBox5" runat="server" Height="247px" TextMode="MultiLine" Width="691px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Очистить" />
    <br />
</asp:Content>

