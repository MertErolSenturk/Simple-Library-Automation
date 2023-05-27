<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ekle.aspx.cs" Inherits="ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		.auto-style1 {
			width: 100%;
		}
		.auto-style2 {
			width: 85px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<table class="auto-style1">
		<tr>
			<td class="auto-style2">Kitap Adı:</td>
			<td>
				<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Yazar Adı:</td>
			<td>
				<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Kitap Türü:</td>
			<td>
				<asp:DropDownList ID="DropDownList1" runat="server">
					<asp:ListItem>ROMAN</asp:ListItem>
					<asp:ListItem>MASAL</asp:ListItem>
					<asp:ListItem>MACERA</asp:ListItem>
				</asp:DropDownList>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Yayın Evi:</td>
			<td>
				<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
			</td>
		</tr>
		<tr>
			<td class="auto-style2">Kapak:</td>
			<td>
				<asp:FileUpload ID="FileUpload1" runat="server" />
			</td>
		</tr>
		<tr>
			<td class="auto-style2">&nbsp;</td>
			<td>
				<asp:Button ID="Button1" runat="server" ForeColor="Red" BackColor=black OnClick="Button1_Click" Text="EKLE" />
			</td>
		</tr>
	</table>
</asp:Content>

