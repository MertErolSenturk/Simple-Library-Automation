using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
	DataSetTableAdapters.adminTableAdapter ajan = new DataSetTableAdapters.adminTableAdapter();
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		if (ajan.GetDataByAdmin(TextBox1.Text).Count>0)
		{
			if (ajan.GetDataByAdmin(TextBox1.Text).Rows[0][1].ToString()==(TextBox2.Text))
			{
				Response.Redirect("liste.aspx");
				Label1.Text = "";
			}
			else
			{
				Label2.Text = "Şifreniz Hatalı";
			}
		}
		

	}

	protected void TextBox1_TextChanged(object sender, EventArgs e)
	{
		if (ajan.GetDataByAdmin(TextBox1.Text).Count > 0)
		{

			Label1.Text = "";
			
		}
		else
		{
			Label1.Text = "Kullanıcı Adı veya Şifreniz Hatalı";
		}
	}
}