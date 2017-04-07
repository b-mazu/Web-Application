using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : Page
{
    SqlConnection vid = new SqlConnection ("Data Source=BARTEK-KOMPUTER\\SQLEXPRESS;Initial Catalog=test1;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void IDInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["ID_klienta"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxID")).Text;
        SqlDataSource1.InsertParameters["Nazwisko"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNazwisko")).Text;
        SqlDataSource1.InsertParameters["Imie"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxImie")).Text;
        SqlDataSource1.InsertParameters["Nip"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNip")).Text;
        SqlDataSource1.InsertParameters["Kraj"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxKraj")).Text;
        SqlDataSource1.InsertParameters["Miasto"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxMiasto")).Text;
        SqlDataSource1.InsertParameters["Ulica"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxUlica")).Text;
        SqlDataSource1.InsertParameters["Nr_telefonu"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBoxNr")).Text;
        SqlDataSource1.Insert();
    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "SELECT Klienci.* from Klienci where (Klienci.Imie like '%' + @search + '%')";
        SqlCommand xp = new SqlCommand(str, vid);

        xp.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox2.Text;

        vid.Open();
        xp.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = xp;
        DataSet ds = new DataSet();
        da.Fill(ds, "Imie");
        GridView2.DataSource = ds;
        GridView2.DataBind();
        vid.Close();
    }


}
