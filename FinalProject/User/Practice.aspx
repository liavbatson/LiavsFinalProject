﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Practice.aspx.cs" Inherits="User_Practice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" style="float:right"></asp:Label>
    <center>
    <table dir="rtl" style="border:none;" width="70%">
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Image ID="picture" runat="server" Width="400px" Height="400px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <center>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckMyAnswer" >
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="labelColor" runat="server" Font-Size="XX-Large"></asp:Label>
                </center>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Button ID="next" runat="server" OnClick="NextEx" Text="הבא" CssClass="buttonClass" BackColor="#0082e6"></asp:Button>
                <asp:Button ID="previous" runat="server" OnClick="PreviousEx" Text="קודם" CssClass="buttonClass" BackColor="#0082e6"></asp:Button>
            </td>            
        </tr>
    </table>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="בחר תרגיל"></asp:Label>
    <asp:Panel id="panel1" runat="server" ></asp:Panel>
    </center>
</asp:Content>