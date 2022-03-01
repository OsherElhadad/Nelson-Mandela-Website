<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page5.aspx.cs" Inherits="page5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#info {
    background: #555;
    border-bottom: 2px solid Red;
}
#successes {
    background: #666;
    border-bottom: 2px solid Yellow;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="page5.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;">
<br /><center><h1 style="text-decoration:underline">הוקרה-</h1></center><br />
<div style="margin-right:15px; font-size:larger; margin-left:15px">
<p>
מנדלה נחשב ממנהיגי המאבק נגד משטר האפרטהייד ונבחר על ידי תושבי דרום אפריקה כ"אבי האומה". מנדלה היה ידוע כאדם מוערך בעולם וזכה בפרסים רבים, כמו: פרס נובל לשלום לשנת 1993, ‏פרס סחרוב לחופש המחשבה לשנת 1988, מסדר ההצטיינות הבריטי, מדליית החירות הנשיאותית ומדליית הזהב של הקונגרס של ארצות הברית, ואף נבחר לאיש השנה של המגזין טיים.
</p>
אודות מנדלה נכתבו ביוגרפיות רבות, ואף הופקו מספר סרטים על חייו.
אחד מראשי המאבק הבינלאומי למענו היה העיתונאי הליברלי ריצ'רד סטנגל, כיום העורך הראשי של טיים מגזין. סטנגל אף היה סופר הצללים שכתב יחד עם מנדלה את האוטוביוגרפיה שלו, שיצאה לאור ב-1993 בהוצאת ליטל, בראון - Long Walk to Freedom‏ (הספר תורגם גם לעברית ויצא לאור בישראל ב-1994), שעובד לסרט קולנוע בשם "ארוכה הדרך לחירות", בכיכובם של אידריס אלבה ונעמי האריס. ב-1996 היה סטנגל מפיק שותף של הסרט הדוקומנטרי "מנדלה", שהיה מועמד לפרס אוסקר.
בשנת 2009 יצא לאקרנים הסרט "אינוויקטוס", המתאר את ראשית תקופת נשיאותו של מנדלה, שגולם בידי השחקן מורגן פרימן ובוים בידי קלינט איסטווד.
בנובמבר 2012 הנציחה הממשלה את דמותו על שטרות הראנד הדרום אפריקאי.
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</asp:Content>

