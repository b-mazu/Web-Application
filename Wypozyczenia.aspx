<%@ Page Title="Wypozyczenia" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Wypozyczenia.aspx.cs" Inherits="Default2" %>




<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h2>Wypożyczenia<br />
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
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id_wypożyczenia" DataSourceID="SqlDataSourcewypozyczenia" ForeColor="Black" GridLines="Vertical" ShowFooter="True">
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
                <asp:TemplateField HeaderText="Id_wypożyczenia" SortExpression="Id_wypożyczenia">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id_wypożyczenia") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_wypożyczenia") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxIDwypozyczenia" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Id_klienta" SortExpression="Id_klienta">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id_klienta") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Id_klienta") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxIDKlienta" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_pracownika" SortExpression="ID_pracownika">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ID_pracownika") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ID_pracownika") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxIDPracownika" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ID_samochodu" SortExpression="ID_samochodu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ID_samochodu") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ID_samochodu") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxIDSamochodu" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data_wypozyczenia" SortExpression="Data_wypozyczenia">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Data_wypozyczenia") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Data_wypozyczenia") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxData_Wypo" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data_oddania" SortExpression="Data_oddania">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Data_oddania") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Data_oddania") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxData_Odda" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cena" SortExpression="Cena">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Cena") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Cena") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxCena" runat="server" Width="25px"></asp:TextBox>
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
        <asp:SqlDataSource ID="SqlDataSourcewypozyczenia" runat="server" ConnectionString="<%$ ConnectionStrings:test1 Klienci %>" DeleteCommand="DELETE FROM [Wypozyczenie] WHERE [Id_wypożyczenia] = @Id_wypożyczenia" InsertCommand="INSERT INTO [Wypozyczenie] ([Id_wypożyczenia], [Id_klienta], [ID_pracownika], [ID_samochodu], [Data_wypozyczenia], [Data_oddania], [Cena]) VALUES (@Id_wypożyczenia, @Id_klienta, @ID_pracownika, @ID_samochodu, @Data_wypozyczenia, @Data_oddania, @Cena)" SelectCommand="SELECT * FROM [Wypozyczenie]" UpdateCommand="UPDATE [Wypozyczenie] SET [Id_klienta] = @Id_klienta, [ID_pracownika] = @ID_pracownika, [ID_samochodu] = @ID_samochodu, [Data_wypozyczenia] = @Data_wypozyczenia, [Data_oddania] = @Data_oddania, [Cena] = @Cena WHERE [Id_wypożyczenia] = @Id_wypożyczenia">
            <DeleteParameters>
                <asp:Parameter Name="Id_wypożyczenia" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id_wypożyczenia" Type="Int32" />
                <asp:Parameter Name="Id_klienta" Type="Int32" />
                <asp:Parameter Name="ID_pracownika" Type="Int32" />
                <asp:Parameter Name="ID_samochodu" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Data_wypozyczenia" />
                <asp:Parameter DbType="Date" Name="Data_oddania" />
                <asp:Parameter Name="Cena" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_klienta" Type="Int32" />
                <asp:Parameter Name="ID_pracownika" Type="Int32" />
                <asp:Parameter Name="ID_samochodu" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Data_wypozyczenia" />
                <asp:Parameter DbType="Date" Name="Data_oddania" />
                <asp:Parameter Name="Cena" Type="Int32" />
                <asp:Parameter Name="Id_wypożyczenia" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

    </section>
</asp:Content>

