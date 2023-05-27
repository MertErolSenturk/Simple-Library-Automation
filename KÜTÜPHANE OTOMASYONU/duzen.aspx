<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="duzen.aspx.cs" Inherits="duzen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<p>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/kutuphane.accdb" DeleteCommand="DELETE FROM [kitaplar] WHERE [barkod] = ?" InsertCommand="INSERT INTO [kitaplar] ([barkod], [ad], [yazar], [tur], [yayinevi], [kapak]) VALUES (?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [kitaplar]" UpdateCommand="UPDATE [kitaplar] SET [ad] = ?, [yazar] = ?, [tur] = ?, [yayinevi] = ?, [kapak] = ? WHERE [barkod] = ?">
			<DeleteParameters>
				<asp:Parameter Name="barkod" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="barkod" Type="Int32" />
				<asp:Parameter Name="ad" Type="String" />
				<asp:Parameter Name="yazar" Type="String" />
				<asp:Parameter Name="tur" Type="String" />
				<asp:Parameter Name="yayinevi" Type="String" />
				<asp:Parameter Name="kapak" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="ad" Type="String" />
				<asp:Parameter Name="yazar" Type="String" />
				<asp:Parameter Name="tur" Type="String" />
				<asp:Parameter Name="yayinevi" Type="String" />
				<asp:Parameter Name="kapak" Type="String" />
				<asp:Parameter Name="barkod" Type="Int32" />
			</UpdateParameters>
		</asp:AccessDataSource>
		<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="barkod" DataSourceID="AccessDataSource1">
			<Columns>
				<asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel-icon .png" DeleteImageUrl="~/images/Delete-icon.png" EditImageUrl="~/images/Pencil-icon.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/images/update-icon.png" />
				<asp:BoundField DataField="barkod" HeaderText="barkod" InsertVisible="False" ReadOnly="True" SortExpression="barkod" />
				<asp:TemplateField HeaderText="ad" SortExpression="ad">
					<EditItemTemplate>
						<asp:Label ID="Label3" runat="server" Text='<%# Bind("ad") %>'></asp:Label>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label1" runat="server" Text='<%# Bind("ad") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="yazar" SortExpression="yazar">
					<EditItemTemplate>
						<asp:Label ID="Label4" runat="server" Text='<%# Bind("yazar") %>'></asp:Label>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label2" runat="server" Text='<%# Bind("yazar") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
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
	</p>
</asp:Content>

