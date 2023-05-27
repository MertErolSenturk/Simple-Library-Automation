using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ekle : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		DataSetTableAdapters.kitaplarTableAdapter ekle = new DataSetTableAdapters.kitaplarTableAdapter();
		ekle.InsertQueryKitaplar(TextBox1.Text, TextBox2.Text, DropDownList1.Text, TextBox3.Text,"images/"+FileUpload1.FileName);
	}
}