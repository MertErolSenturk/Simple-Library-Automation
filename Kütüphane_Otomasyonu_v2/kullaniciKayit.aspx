<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kullaniciKayit.aspx.cs" Inherits="kullaniciKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style2 {
			width: 76px;
		}
		.button1 {
			background-color: lightskyblue;
			border: none;
			color: white;
			padding: 8px 24px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 12px;
			cursor:pointer;
			color:black;
		}
		.button1:hover {
			color:lightskyblue;
			background-color:antiquewhite;
			border:1px solid lightskyblue;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2>Kayıt Ol</h2>
	<table class="auto-style1">
		<tr>
			<td class="auto-style2">Kullanıcı Adı:</td>
			<td>
				<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
				<asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Parola:</td>
			<td>
				<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Parola Tekrar:</td>
			<td>
				<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
				<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Şifreniz Uyuşmuyor!" ForeColor="#CC0000"></asp:CompareValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">&nbsp;</td>
			<td>
				<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="button1" Text="Kayıt Ol" />
				<asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
			</td>
		</tr>
	</table>

</asp:Content>

