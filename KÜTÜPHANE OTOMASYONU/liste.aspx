<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="liste.aspx.cs" Inherits="liste" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/kutuphane.accdb" SelectCommand="SELECT * FROM [kitaplar]"></asp:AccessDataSource>
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

