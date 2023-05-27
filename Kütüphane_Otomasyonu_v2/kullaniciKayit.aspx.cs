using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kullaniciKayit : System.Web.UI.Page
{
	DataSetTableAdapters.adminTableAdapter ajan = new DataSetTableAdapters.adminTableAdapter();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		
		if (ajan.GetDataByAdmin(TextBox1.Text).Count>0)
		{
			Label1.Text = "Bu kullanıcı adı kayıtlı!";
		}
		else
		{
			Label1.Text = "";
			DataSetTableAdapters.adminTableAdapter kayit = new DataSetTableAdapters.adminTableAdapter();
			kayit.InsertQueryAdmin(TextBox1.Text, TextBox2.Text);
			Label2.Text = "Kayıt Tamamlandı.";
		}
	}

	protected void TextBox1_TextChanged(object sender, EventArgs e)
	{
		if (ajan.GetDataByAdmin(TextBox1.Text).Count>0)
		{
			Label1.Text = "Bu kullanıcı adı kayıtlı";

		}
		else
		{
			Label1.Text = "";
		}
	}
}