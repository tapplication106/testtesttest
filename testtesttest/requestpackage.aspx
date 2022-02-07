<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="requestpackage.aspx.cs" Inherits="testtesttest.requestpackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row justify-content-center">
        <div class="col-lg-8 mt-7">
   <asp:Table id="Table1" runat="server"
        CellPadding="10" 
        GridLines="Both"
        HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell>
               Plantation
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Irrigation
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
               Nettoyage
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox3" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Harvest
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox4" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
               Land clearing
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox5" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Stone removal(Épierrage)
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox6" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                Stone removal
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox8" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
                Hilling (Buttage)
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox7" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow>
            <asp:TableCell>
                Spraying of chemicals
            </asp:TableCell>
            <asp:TableCell>
                <asp:CheckBox ID="CheckBox9" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
            </div>
            </div>

</asp:Content>
