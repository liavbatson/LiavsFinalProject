<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LearningGeometricShapes.aspx.cs" Inherits="User_ClassA_LearningGeometricShapes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <center>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            מיון והגדרה של קווים
        </h1>
        <h1>
            <asp:Button ID="Button1" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenFirstP"></asp:Button>
            <asp:Button ID="Button2" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseFirstP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="firstP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <span style="color:#0082e6">קטע -</span>
            לקטע יש 2 קצוות. <br />
            נצייר קו ישר המוגבל על ידי 2 נקודות: <br />
            <img src="../../Images/StraightLine.png" /> <br />
            בין 2 נקודות עובר רק קו ישר
            <b>אחד.</b> <br />
            <img src="../../Images/Line.png" /> <br />
            <span style="color:#0082e6">קו שבור -</span>
            קו הבנוי מקטעים בלבד. <br />
            נצייר קו שבור: <br />
            <img src="../../Images/BrokenLine.png" /> <br />
            <span style="color:#0082e6">קו עקום -</span>
            קו שאינו בנוי מקווים ישרים. <br />
            נצייר קו עקום: <br />
            <img src="../../Images/CrookedLine.png" /> <br />
            <span style="color:#0082e6">קו פתוח -</span>
            אין פנים - יש לו סוף ויש לו התחלה. <br />
            <img src="../../Images/OpenLine.png" /> <img src="../../Images/OpenLine2.png" /> <br />
            <span style="color:#0082e6">קו סגור -</span>
            אפשר לצבוע בפנים. אין לו התחלה ואין לו סוף.  <br />
            <img src="../../Images/Rectangle.png" /> <img src="../../Images/Oval.png" /> <br />
            <span style="color:#0082e6">קו עקום פתוח -</span>
            קו שאינו בנוי מקווים ישרים. אין לו פנים ויש לו סוף ויש לו התחלה. <br />
            <img src="../../Images/ClosedCrookedLine1.png" /> <img src="../../Images/ClosedCrookedLine2.png" /> <br />
        </p>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            צלעות במצולע
        </h1>
        <h1>
            <asp:Button ID="Button3" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenSecondP"></asp:Button>
            <asp:Button ID="Button4" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseSecondP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="secondP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <span style="color:#0082e6">מצולע - </span>הוא <b> קו שבור סגור.</b>  <br />
            לכל צד של המצולע קוראים<b> צלע.</b>  <br />כל מצולע בנוי מ<b>צלעות.</b>  <br />
            שם המצולע מתאים למספר הצלעות שלו.  <br />
            <span style="color:#0082e6">משולש - </span> מצולע בעל 3 צלעות. <img src="../../Images/Triangular.png" /> <br />
            <span style="color:#0082e6">מרובע - </span> מצולע בעל 4 צלעות. <img src="../../Images/Rectangle.png" /> <br />
            <span style="color:#0082e6">מחומש - </span> מצולע בעל 5 צלעות. <img src="../../Images/Pentagon.png" /> <br />
            <span style="color:#0082e6">משושה - </span> מצולע בעל 6 צלעות. <img src="../../Images/Hexagon.png" /> <br /><br /><b> וכך הלאה.</b>
        </p>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            קודקודים במצולעים
        </h1>
        <h1>
            <asp:Button ID="Button5" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenThirdP"></asp:Button>
            <asp:Button ID="Button6" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseThirdP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="thirdP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            לכל מצולע יש <b>קודקודים -</b> <br /> <b>קודקוד </b>הוא המפגש שבין שתי צלעות.  <br />
            <span style="color:#0082e6">למשולש - </span> יש 3 קודקודים. <img src="../../Images/TriangularWithVertices.png" />  <br />
            <span style="color:#0082e6">למרובע - </span> יש 4 קודקודים. <img src="../../Images/RectangleWithVertices.png" />  <br />
            <span style="color:#0082e6">למחומש - </span> יש 5 קודקודים. <img src="../../Images/PentagonWithVertices.png" />  <br />
        </p>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            זוויות במצולעים
        </h1>
        <h1>
            <asp:Button ID="Button7" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenFourthP"></asp:Button>
            <asp:Button ID="Button8" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseFourthP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="fourthP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            כל שתי צלעות שנפגשות בקודקוד יוצרות
            <b> <span style="color:#0082e6"> זווית.</span> </b> <br />
            כבר למדנו על מספר מצולעים - <span style="color:#0082e6">משולש | מרובע | מחומש</span>  <br />
            נראה זווית במשולש - הזווית נמצאת בין צלע 1 לצלע 2. <br />
            <img src="../../Images/TriangularWithAngle.png" /> <br />
            נראה זווית במרובע - הזווית נמצאת בין צלע A לצלע B. <br />
            <img src="../../Images/RectangleWithAngle.png" /> <br />
            במשולש יש 3 זוויות, במרובע יש 4 זוויות במחומש יש 5 <b> וכך הלאה.</b> <br />
            <img src="../../Images/3angles.png" /> <img src="../../Images/4angles.png" />
        </p>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            אלכסונים במצולעים
        </h1>
        <h1>
            <asp:Button ID="Button9" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenFifthP"></asp:Button>
            <asp:Button ID="Button10" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseFifthP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="fifthP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            <span style="color:#0082e6">אלכסון - </span>
            הוא <b> קטע </b> המחבר בין שני <b> קודקודים </b> של <b> מצולע </b> שאינם נמצאים על <b> צלע </b> אחת. <br />
            <b> במשולש אין אלכסונים ! </b> <br /> נראה אלכסונים במצולעים - <span style="color:#0082e6"> מרובע ומחומש.</span> <br />
            <img src="../../Images/RectangleWithDiagonal.png" /> <img src="../../Images/PentagonWithDiagonal.png" /> <br />
            נראה את כל האלכסונים במרובע ובמחומש.  <br />
            <img src="../../Images/RectangleWithAllDiagonal.png" /> <img src="../../Images/PentagonWithAllDiagonal.png" />
        </p>
        <h1 style="font-family: 'montserrat', sans-serif; font-size:80px;color:#0082e6">
            היקף מצולעים
        </h1>
        <h1>
            <asp:Button ID="Button11" runat="server" Text="פתח" CssClass="buttonClass" OnClick="OpenSixthP"></asp:Button>
            <asp:Button ID="Button12" runat="server" Text="סגור" CssClass="buttonClass" OnClick="CloseSixthP"></asp:Button>
        </h1>
        <br />
        <p runat="server" id="sixthP" style="font-size:25px;font-family: 'montserrat', sans-serif;display:none">
            מהו היקף של צורה ? <br /> <span style="color:#0082e6"> היקף של צורה - </span> אורך הקו המגביל את הצורה. <br />
            <b> היקף יש רק לצורה סגורה ! </b> <br /> <span style="color:#0082e6"> היקף המצולע - </span> סכום אורכי הצלעות המרכיבות אותו. <br />
            נראה דוגמה להיקף של מרובע - <br /> <img src="../../Images/PerimeterExample.png" /> <br />
            למרובע יש 2 צלעות - <span style="color:#0082e6"> 2 ס"מ </span> ו 2 צלעות - <span style="color:#0082e6"> 5 ס"מ </span> <br />
            <b>תזכורת : </b> היקף המרובע הוא סכום הצלעות שמרכיבות אותו : <br />
            <b> <span style="color:#0082e6"> 14 = 5 + 2 + 5 + 2 </span> </b> <br /> היקף המרובע הוא <b> 14 .</b>  <br />
            נראה דוגמה נוספת, הפעם להיקף של משולש - <br /> <img src="../../Images/PerimeterExample2.png" /> <br />
            למשולש יש 3 צלעות - <span style="color:#0082e6"> 4 ס"מ , 6 ס"מ , ו - 7 ס"מ </span> <br />
            היקף המשולש הוא סכום 3 הצלעות שמרכיבות אותו : <br />
            <b> <span style="color:#0082e6"> 17 = 7 + 6 + 4 </span> </b> <br /> היקף המשולש הוא <b> 17 .</b>
        </p>
    </center>
</asp:Content>