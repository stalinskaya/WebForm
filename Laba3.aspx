<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    class AHero
    {
        virtual public string Say()
        {
            return "Hi";
        }
    }
    class AAnimal : AHero { }
    class AHomo : AHero
    {
        String name;
        String job;
        public AHomo(String name, String job)
        {
            this.name = name;
            this.job = job;
        }
        override public string Say()
        {
            return  "Hello";
        }
    }
    class AAss : AAnimal
    {
        override public string Say()
        {
            return  "Ii-aa";
        }
    }
    class ACat : AAnimal
    {
        override public string Say()
        {
            return "miau-miau";
        }
    }
    class ADog : AAnimal
    {
        override public string Say()
        {
            return "gav-gav";
        }
    }
    class ACock : AAnimal
    {
        override public string Say()
        {
            return "ku-ka-re-ku";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ACat cat = new ACat();
        AAss ass = new AAss();
        ADog dog = new ADog();
        ACock ck = new ACock();
        AHomo h = new AHomo("1", "Trompeter");
        AHero[] ah = new AHero[5];

        ah[0] = cat;
        ah[1] = dog;
        ah[2] = ass;
        ah[3] = ck;
        ah[4] = h;

        for (int i = 0; i < ah.Length - 1; i++)
        {
            Label1.Text += " " + ah[i].GetType().Name + " says " + ah[i + 1].Say() + "<br>";

        }
        Label1.Text += " " + ah[ah.Length - 1].GetType().Name + " says " + ah[0].Say() + "<br>";
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Бременские музыканты</h1><br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выполнить" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Medium" />
    <br />
    <br />
</asp:Content>

