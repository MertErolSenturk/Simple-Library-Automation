<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ara.aspx.cs" Inherits="ara" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		.auto-style1 {
			margin-left: 16px;
		}
		.auto-style2 {
			margin-left:39px;
			margin-top:10px;
			background-color: lightskyblue;
			border: none;
			color: white;
			padding: 8px 28px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 14px;
			cursor:pointer;
			color:black;
		}
		.auto-style2:hover {
			color:lightskyblue;
			background-color:antiquewhite;
			border:1px solid lightskyblue;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2>Kitap Ara</h2>
	<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
		<asp:ListItem>Kitap adıyla</asp:ListItem>
		<asp:ListItem>Yazar adıyla</asp:ListItem>
		<asp:ListItem>Kitap türüyle</asp:ListItem>
	</asp:RadioButtonList>
	Ara:<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
	<br />
	<asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Ara" />
	<br />
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/kutuphane.accdb" SelectCommand="SELECT * FROM [kitaplar] WHERE ([ad] = ?)">
		<SelectParameters>
			<asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="ad" PropertyName="Text" Type="String" />
		</SelectParameters>
	</asp:AccessDataSource>
	<asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/kutuphane.accdb" SelectCommand="SELECT * FROM [kitaplar] WHERE ([yazar] = ?)">
		<SelectParameters>
			<asp:ControlParameter ControlID="TextBox1" Name="yazar" PropertyName="Text" Type="String" />
		</SelectParameters>
	</asp:AccessDataSource>
	<asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/kutuphane.accdb" SelectCommand="SELECT * FROM [kitaplar] WHERE ([tur] = ?)">
		<SelectParameters>
			<asp:ControlParameter ControlID="TextBox1" Name="tur" PropertyName="Text" Type="String" />
		</SelectParameters>
	</asp:AccessDataSource>
	<br />
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="barkod" DataSourceID="AccessDataSource1">
		<Columns>
			<asp:BoundField DataField="barkod" HeaderText="barkod" InsertVisible="False" ReadOnly="True" SortExpression="barkod" />
			<asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
			<asp:BoundField DataField="yazar" HeaderText="yazar" SortExpression="yazar" />
			<asp:BoundField DataField="tur" HeaderText="tur" SortExpression="tur" />
			<asp:BoundField DataField="yayinevi" HeaderText="yayinevi" SortExpression="yayinevi" />
			<asp:TemplateField HeaderText="kapak" SortExpression="kapak">
				<EditItemTemplate>
					<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("kapak") %>'></asp:TextBox>
				</EditItemTemplate>
				<ItemTemplate>
					<asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("kapak") %>' />
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
</asp:Content>

