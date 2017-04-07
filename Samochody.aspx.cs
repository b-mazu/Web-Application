using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection vid = new SqlConnection("Data Source=BARTEK-KOMPUTER\\SQLEXPRESS;Initial Catalog=test1;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "SELECT * from Samochody where (Marka like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, vid);

        xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

        vid.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Marka");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        vid.Close();
    }

        protected void IDInsert_Click(object sender, EventArgs e)
        {
            SqlDataSourcesamochody.InsertParameters["ID_Samochodu"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxID")).Text;
            SqlDataSourcesamochody.InsertParameters["Marka"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxMarka")).Text;
            SqlDataSourcesamochody.InsertParameters["Model"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxModel")).Text;
            SqlDataSourcesamochody.InsertParameters["Rok_produkcji"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxRok")).Text;
            SqlDataSourcesamochody.InsertParameters["Kolor"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxKolor")).Text;
            SqlDataSourcesamochody.InsertParameters["Przebieg"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxPrzebieg")).Text;
            SqlDataSourcesamochody.InsertParameters["nr_gps"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxNr")).Text;
            SqlDataSourcesamochody.InsertParameters["Kaucja"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxKaucja")).Text;
            SqlDataSourcesamochody.Insert();
        }
    
}