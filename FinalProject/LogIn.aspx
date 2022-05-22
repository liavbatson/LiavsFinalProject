<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <table border="0" width="90%" style="font-size:x-large" dir="rtl">
            <tr>
                <td>
                    <asp:TextBox ID="mail" runat="server" class="textBoxClass" placeHolder="מייל"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="חובה למלא מייל" ControlToValidate="mail" Text="שדה חובה"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="pass" runat="server" class="textBoxClass" placeHolder="סיסמה" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="חובה למלא סיסמה" ControlToValidate="pass" Text="שדה חובה"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="התחבר" CssClass="buttonClass" OnClick="Button_Click"></asp:Button>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </center>
</asp:Content>