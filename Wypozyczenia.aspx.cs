using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection vid = new SqlConnection("Data Source=BARTEK-KOMPUTER\\SQLEXPRESS;Initial Catalog=test1;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "SELECT * from Wypozyczenie where (Id_wypożyczenia like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, vid);

        xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

        vid.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Id_wypożyczenia");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        vid.Close();
    }
    protected void IDInsert_Click(object sender, EventArgs e)
    {

        SqlDataSourcewypozyczenia.InsertParameters["Id_wypożyczenia"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxIDwypozyczenia")).Text;
        SqlDataSourcewypozyczenia.InsertParameters["Id_klienta"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxIDKlienta")).Text;
        SqlDataSourcewypozyczenia.InsertParameters["ID_pracownika"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxIDPracownika")).Text;
        SqlDataSourcewypozyczenia.InsertParameters["ID_samochodu"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxIDSamochodu")).Text;
        SqlDataSourcewypozyczenia.InsertParameters["Data_wypozyczenia"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxData_Wypo")).Text;
        SqlDataSourcewypozyczenia.InsertParameters["Data_oddania"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxData_Odda")).Text;
        SqlDataSourcewypozyczenia.InsertParameters["Cena"].DefaultValue = ((TextBox)GridView2.FooterRow.FindControl("TextBoxCena")).Text;
        SqlDataSourcewypozyczenia.Insert();
    }
}