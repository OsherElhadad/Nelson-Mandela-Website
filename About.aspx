<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#about {
    background: #555;
    border-bottom: 2px solid Red;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="About.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;">
<br /><center><h1 style="text-decoration:underline">על האתר-</h1></center><br />
<div style="margin-right:15px; font-size:larger; margin-left:15px">
<p>
האתר כולל בתוכו עמוד פתיחה שכולל סרטון על נלסון והתחברות לאתר, חמישה עמודי מידע על נלסון, עמוד שכולל מידע כללי על האתר, עמוד תמונות של נלסון, וטופס הרשמה.
</p>
<p></p>
<p>
נושא האתר קשור לנושא "האחר הוא אני" בכך שהוא קשור לגזענות. ניתן לראות שמנדלה היה שונה משאר האנשים בעיקר בגלל צבע עורו. למרות שמנדלה היה "אחר", הוא הצליח בחייו, שמר על עקרונותיו של סובלנות וקבלת האחר והגשים את מטרותיו. 
</p>
<p></p>
<p>
נלסון מנדלה היה איש חשוב מאוד אשר הקדיש את כל חייו למען עמו, השפיע רבות ושינה את המעמד של השחורים באפריקה.
למרות שהיה שחור ושונה, אחר, נלסון זכה באהדה והצלחה רבה, ואף הפך להיות נשיא דרום אפריקה.
</p>
<p></p>
<p>
לאורך כל חיו הוא לא וויתר על מטרותיו, למרות שבדרכו עמדו מכשולים רבים (גזענות), וגילה מנהיגות ואומץ לב רבים.
</p>
<p></p>
<p>
בנוסף, הוא נעצר והועמד לדין באשמת יציאה בלתי חוקית מגבולות המדינה, הסתה לשביתות ועוד מעשים הקשורים לפעולות טרור.
</p>
<p></p>
<p>
לבסוף, נכלא מנדלה בכלא בדרום אפריקה למשך- 27 שנים. מנדלה היה ידוע כאדם מוערך בעולם וזכה בפרסים רבים שהחשוב מבניהם הוא- פרס נובל לשלום (שנת 1993).
בנוסף, על אף האפרטהייד ועשרים וחמש השנה שהוא בילה בכלא, הסובלנות וקבלת האחר היו הקווים שהנחו אותו לאורך כל חייו.
</p>
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</asp:Content>

