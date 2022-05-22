<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LearningVolumes.aspx.cs" Inherits="User_ClassA_LearningSlidingAndMirroring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <center>
       <div> <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            נפח תיבה
        </h1>
        <h1>
            <asp:Button ID="Button1" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenFirstP"></asp:Button>
            <asp:Button ID="Button2" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseFirstP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="firstP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <span style="color:#0082e6">נפח התיבה</span><br />
            <img src="../../Images/Fgrade_img/volsq_a.png" width="800" height="700" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsq_b.png" width="800" height="700" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsq_c.png" width="300" height="50" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsq_d.png" width="300" height="100" /> <br />
            <img src="../../Images/Fgrade_img/volsq_e.png" width="400" height="100" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsq_f.png" width="600" height="200" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsq_g.png" width="700" height="500" /> <br /><br />
            
        </p></div>
        <div>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
              הגדלת מימדים והשפעתם על הנפח
        </h1>
        <h1>
            <asp:Button ID="Button3" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenSecondP"></asp:Button>
            <asp:Button ID="Button4" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseSecondP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="secondP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
             <span style="color:#0082e6">הגדלת מימדים של גופים </span> <br />
            <img src="../../Images/Fgrade_img/volsize_a.png" width="800" height="800" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsize_b.png" width="800" height="800" /> <br /><br />
            <img src="../../Images/Fgrade_img/volsize_c.png" width="800" height="400" /> <br /><br /><br /><br />
        </p></div>
        <div>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
                חישובי שטח פנים של תיבה
        </h1>
        <h1>
            <asp:Button ID="Button5" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenThirdP"></asp:Button>
            <asp:Button ID="Button6" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseThirdP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="thirdP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <span style="color:#0082e6">חישוב שטח פנים של תיבה </span><br />
            <img src="../../Images/Fgrade_img/vosq_a.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_b.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_c.png" width="600" height="100" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_d.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_e.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_f.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_g.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/vosq_h.png" width="600" height="400" /> <br /><br />

            
        </p></div>
        <div>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
                נפח מנסרה
        </h1>
        <h1>
            <asp:Button ID="Button7" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenFourthP"></asp:Button>
            <asp:Button ID="Button8" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseFourthP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="fourthP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <img src="../../Images/Fgrade_img/volmn_a.png" width="500" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_b.png" width="600" height="300" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_c.png" width="600" height="300" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_d.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_e.png" width="200" height="200" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_f.png" width="400" height="200" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_g.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_h.png" width="600" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/volmn_i.png" width="600" height="400" /> <br /><br />
        </p></div>
        <div>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
                נפח פירמידה ומנסרה בעלי בסיס וגובה זהים
        </h1>
        <h1>
            <asp:Button ID="Button9" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenFifthP"></asp:Button>
            <asp:Button ID="Button10" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseFifthP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="fifthP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <img src="../../Images/Fgrade_img/volpir_a.png" width="500" height="400" /> <br /><br />
            <img src="../../Images/Fgrade_img/volpir_b.png" width="500" height="400" /> <br /><br />
            <strong>נפח המנסרה המרובעת הוא : 60 סמ"ק.</strong><br /><br /><br />
            <img src="../../Images/Fgrade_img/volpir_c.png" width="500" height="400" /> <br /><br />
            <strong>נפח הפירמידה המרובעת הוא : 20 סמ"ק.</strong><br /><br /><br />
            
            
        </p></div>
    </center>
</asp:Content>

