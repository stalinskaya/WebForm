<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lb8.aspx.cs" Inherits="lb8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <div class ="Alice">
        <p>P <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="90px"></asp:TextBox></p>
        <p>Alice</p>
        <p>Secret Alice number <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="75px"></asp:TextBox></p>
        <p>Key
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </div>
    <div class ="Bob">
        <p> Mod (G)<asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="78px"></asp:TextBox></p>
        <p>Bob</p>
        <p>Secret Bob number <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="85px"></asp:TextBox></p>
        <p>Key
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
    </div>
</div>
<div class="Eva">
    <p>What does Eva see?</p>
    <p>А&nbsp; <asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="72px"></asp:TextBox>&nbsp;B <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="82px"></asp:TextBox></p>
    <p>
        <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Height="32px" OnClick="Button1_Click" Text="Find key" Width="99px" />
    </p>

    </div>
</asp:Content>

