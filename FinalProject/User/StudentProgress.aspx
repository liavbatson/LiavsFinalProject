<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentProgress.aspx.cs" Inherits="User_StudentProgress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <h1 style="text-align:center;font-size:50px"> כיתה א' </h1> <br />
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large"></asp:Label> <br />
        <h1 style="text-align:center;font-size:50px"> כיתה ב' </h1> <br />
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large"></asp:Label> <br />
        <h1 style="text-align:center;font-size:50px"> כיתה ג' </h1> <br />
        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large"></asp:Label> <br />
        <h1 style="text-align:center;font-size:50px"> כיתה ד' </h1> <br />
        <asp:Label ID="Label4" runat="server" Font-Size="XX-Large"></asp:Label> <br />
        <h1 style="text-align:center;font-size:50px"> כיתה ה' </h1> <br />
        <asp:Label ID="Label5" runat="server" Font-Size="XX-Large"></asp:Label> <br />
        <h1 style="text-align:center;font-size:50px"> כיתה ו' </h1> <br />
        <asp:Label ID="Label6" runat="server" Font-Size="XX-Large"></asp:Label> <br />
        <h1 style="text-align:center;font-size:50px"> סך הכל </h1> <br />
        <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" ForeColor="YellowGreen"></asp:Label> <br />
    </center>
</asp:Content>