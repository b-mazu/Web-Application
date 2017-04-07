<%@ Page Title="Klienci" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Klienci.aspx.cs" Inherits="Contact" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style type="text/css">

</style>
    <hgroup class="title">
        
        <h2>Klienci&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
        </h2>
    </hgroup>
    <section class="contact">

        
        <asp:TextBox ID="TextBox2" runat="server">Podaj Imie</asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#999999" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" OnClick="Button1_Click" Text="Szukaj" />

        
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_klienta" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" ShowFooter="True"  AllowPaging="True" Width="100px">
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


  
                <asp:TemplateField HeaderText="ID_klienta"  ControlStyle-CssClass="cssWdth"  SortExpression="ID_klienta">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server"  Text='<%# Eval("ID_klienta") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID_klienta") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxID" runat="server" Width="25px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nazwisko" SortExpression="Nazwisko">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nazwisko")%>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nazwisko") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxNazwisko" runat="server" Width="75px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Imie" SortExpression="Imie">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Imie") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Imie") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxImie" runat="server" Width="75px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nip" SortExpression="Nip">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Nip") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Nip") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxNip" runat="server" Width="75px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kraj" SortExpression="Kraj">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Kraj") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Kraj") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxKraj" runat="server" Width="75px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Miasto" SortExpression="Miasto">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Miasto") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Miasto") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxMiasto" runat="server" Width="75px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ulica" SortExpression="Ulica">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ulica") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Ulica") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxUlica" runat="server" Width="75px"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nr_telefonu" SortExpression="Nr_telefonu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Nr_telefonu") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Nr_telefonu") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxNr" runat="server" Width="50px"></asp:TextBox>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1 Klienci %>" DeleteCommand="DELETE FROM [Klienci] WHERE [ID_klienta] = @ID_klienta" InsertCommand="INSERT INTO [Klienci] ([ID_klienta], [Nazwisko], [Imie], [Nip], [Kraj], [Miasto], [Ulica], [Nr_telefonu]) VALUES (@ID_klienta, @Nazwisko, @Imie, @Nip, @Kraj, @Miasto, @Ulica, @Nr_telefonu)" SelectCommand="SELECT * FROM [Klienci]" UpdateCommand="UPDATE [Klienci] SET [Nazwisko] = @Nazwisko, [Imie] = @Imie, [Nip] = @Nip, [Kraj] = @Kraj, [Miasto] = @Miasto, [Ulica] = @Ulica, [Nr_telefonu] = @Nr_telefonu WHERE [ID_klienta] = @ID_klienta">
            <DeleteParameters>
                <asp:Parameter Name="ID_klienta" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_klienta" Type="Int32" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Imie" Type="String" />
                <asp:Parameter Name="Nip" Type="Int64" />
                <asp:Parameter Name="Kraj" Type="String" />
                <asp:Parameter Name="Miasto" Type="String" />
                <asp:Parameter Name="Ulica" Type="String" />
                <asp:Parameter Name="Nr_telefonu" Type="Int64" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Imie" Type="String" />
                <asp:Parameter Name="Nip" Type="Int64" />
                <asp:Parameter Name="Kraj" Type="String" />
                <asp:Parameter Name="Miasto" Type="String" />
                <asp:Parameter Name="Ulica" Type="String" />
                <asp:Parameter Name="Nr_telefonu" Type="Int64" />
                <asp:Parameter Name="ID_klienta" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />

        
    </section>
</asp:Content>