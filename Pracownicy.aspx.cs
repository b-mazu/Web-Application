using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Pracownicy : System.Web.UI.Page
{
    SqlConnection vid = new SqlConnection("Data Source=BARTEK-KOMPUTER\\SQLEXPRESS;Initial Catalog=test1;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "SELECT * from Pracownicy where (Imie like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, vid);

        xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

        vid.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Imie");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        vid.Close();
    }
    protected void IDInsert_Click(object sender, EventArgs e)
    {

        SqlDataSourcepracownicy.InsertParameters["Id_pracownika"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxID")).Text;
        SqlDataSourcepracownicy.InsertParameters["Imie"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxImie")).Text;
        SqlDataSourcepracownicy.InsertParameters["Nazwisko"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxNazwisko")).Text;
        SqlDataSourcepracownicy.InsertParameters["Pensja"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxPensja")).Text;
        SqlDataSourcepracownicy.InsertParameters["Nr_telefonu"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxNr")).Text;
        SqlDataSourcepracownicy.Insert();
    }
}