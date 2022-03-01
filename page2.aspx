<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page2.aspx.cs" Inherits="page2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#info {
    background: #555;
    border-bottom: 2px solid Red;
}
#childhood {
    background: #666;
    border-bottom: 2px solid Yellow;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="page2.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;">
<br /><center><h1 style="text-decoration:underline">ילדות-</h1></center><br />
<div style="margin-right:15px; font-size:larger; margin-left:15px">
<p>
מנדלה נולד ב-18 ביולי 1918 במבזו, מחוז טרנסקיי שבדרום אפריקה.
מנדלה היה בן לשבט הת'מבו הדוברים את שפת הק'וסה. משמעות שמו האפריקאי "רוֹלִיהְלַאלַה" הוא "תלישת ענף מעץ", שמשמעותו "עושה צרות" כינוי לפוחזים.
</p>
<p>
לעדותו, בגיל 16 כשעבר את טקס המילה כמסורת השבט, הוענק לו השם "דָלִיבּוּנגָה" שפירושו "מייסד הבונגה" - הגוף השליט המסורתי בטרנסקיי.
ואילו כינויו האנגלי המפורסם "נלסון", ניתן לו רק ביום הראשון ללימודיו על ידי מורה בבית הספר המקומי‏.
</p>
<p>
אביו, הנרי מגדאדלה מנדלה, היה ראש כפר הולדתו ולמשך שנים שימש כיועץ למנהיגיו של שבט הת'מבו.
</p>
<p>
עם מות אביו, הפך מנדלה לבן חסותו של צ'יף שבט הת'מבו והיה מיועד לכהן כצ'יף במקומו בבוא היום.
תהליך יישוב המחלוקות בחצרו של הצ'יף השפיע על מנדלה הצעיר, שבחר ללמוד משפטים.
</p>
<p>
הוא החל את לימודיו בפורט הייר, אולם לאחר שהשתתף בשביתת סטודנטים הושעה מהלימודים וסולק מהמוסד.
ב־1940 הוא השלים את לימודיו בהתכתבות, התמחה במשרד עורכי דין ביוהנסבורג ונרשם ללימודי תואר ראשון במשפטים‏.
</p>
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</asp:Content>

