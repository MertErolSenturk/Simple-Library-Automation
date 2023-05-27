<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style2 {
			width: 79px;
		}
		.Button1 {
			background-color: lightskyblue;
			border: none;
			color: white;
			padding: 10px 24px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 13px;
			cursor:pointer;
			color:black;
		}
		.Button1:hover {
			color:lightskyblue;
			background-color:antiquewhite;
			border:1px solid lightskyblue;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2>Anasayfa</h2>
	<table class="auto-style1">
		<tr>
			<td class="auto-style2">Kullanıcı Adı:</td>
			<td>
				<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
				<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Parola:</td>
			<td>
				<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">&nbsp;</td>
			<td>
				<asp:Button class="Button1" ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" />
				<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
			</td>
		</tr>
	</table>
	
</asp:Content>

