<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Samochody.aspx.cs" Inherits="Default3" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h2>Samochody&nbsp;&nbsp;&nbsp;<br />
            <br />
        </h2>
    </hgroup>
    <section class="contact">

        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#999999" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button1_Click" Text="Szukaj" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID_samochodu" DataSourceID="SqlDataSourcesamochody" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Zatwierdź"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cofnij"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń"></asp:LinkButton>
                    </ItemTemplate>
                 <FooterTemplate >
                        <asp:LinkButton ID="IDInsert" OnClick="IDInsert_Click" runat="server">Dodaj</asp:LinkButton>
                 </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_samochodu" SortExpression="ID_samochodu">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID_samochodu") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID_samochodu") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxID" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Marka" SortExpression="Marka">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Marka") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Marka") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxMarka" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Model" SortExpression="Model">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Model") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxModel" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rok_produkcji" SortExpression="Rok_produkcji">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Rok_produkcji") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Rok_produkcji") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxRok" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kolor" SortExpression="Kolor">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Kolor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Kolor") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxKolor" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Przebieg" SortExpression="Przebieg">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Przebieg") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Przebieg") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxPrzebieg" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="nr_gps" SortExpression="nr_gps">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("nr_gps") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("nr_gps") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxNr" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="kaucja" SortExpression="kaucja">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("kaucja") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("kaucja") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxKaucja" runat="server" Width="50px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcesamochody" runat="server" ConnectionString="<%$ ConnectionStrings:test1 Klienci %>" DeleteCommand="DELETE FROM [Samochody] WHERE [ID_samochodu] = @ID_samochodu" InsertCommand="INSERT INTO [Samochody] ([ID_samochodu], [Marka], [Model], [Rok_produkcji], [Kolor], [Przebieg], [nr_gps], [kaucja]) VALUES (@ID_samochodu, @Marka, @Model, @Rok_produkcji, @Kolor, @Przebieg, @nr_gps, @kaucja)" SelectCommand="SELECT * FROM [Samochody]" UpdateCommand="UPDATE [Samochody] SET [Marka] = @Marka, [Model] = @Model, [Rok_produkcji] = @Rok_produkcji, [Kolor] = @Kolor, [Przebieg] = @Przebieg, [nr_gps] = @nr_gps, [kaucja] = @kaucja WHERE [ID_samochodu] = @ID_samochodu">
            <DeleteParameters>
                <asp:Parameter Name="ID_samochodu" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_samochodu" Type="Int32" />
                <asp:Parameter Name="Marka" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Rok_produkcji" Type="Int32" />
                <asp:Parameter Name="Kolor" Type="String" />
                <asp:Parameter Name="Przebieg" Type="Int32" />
                <asp:Parameter Name="nr_gps" Type="String" />
                <asp:Parameter Name="kaucja" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Marka" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Rok_produkcji" Type="Int32" />
                <asp:Parameter Name="Kolor" Type="String" />
                <asp:Parameter Name="Przebieg" Type="Int32" />
                <asp:Parameter Name="nr_gps" Type="String" />
                <asp:Parameter Name="kaucja" Type="Int32" />
                <asp:Parameter Name="ID_samochodu" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

    </section>
</asp:Content>

