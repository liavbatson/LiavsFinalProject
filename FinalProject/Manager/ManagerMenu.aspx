<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManagerMenu.aspx.cs" Inherits="Manager_ManagerMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <center>
        <h1>
            <asp:HyperLink ID="usersMenu" NavigateUrl="~/Manager/AllUsers.aspx" runat="server" CssClass="buttonClass">לצפייה במשתמשים</asp:HyperLink>
        </h1>
        <br /><br /><br />
        <h1>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Manager/AddExercise.aspx" runat="server" CssClass="buttonClass">הוסף תרגיל</asp:HyperLink>
        </h1>
    </center>
</asp:Content>