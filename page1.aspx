<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="page1.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#info {
    background: #555;
    border-bottom: 2px solid Red;
}
#reka {
    background: #666;
    border-bottom: 2px solid Yellow;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="page1.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;">
<br /><center><h1 style="text-decoration:underline">רקע-</h1></center><br />
<div style="margin-right:15px; font-size:larger; margin-left:15px">
<p>נלסון (רוֹלִיהְלַאלַה) מנדלה נולד בשנת 1918 בדרום-אפריקה. בתקופה זאת דרום-אפריקה עוד לא קיבלה עצמאות, והיא הייתה בשליטה של בריטניה. </p>
<p>כעבור 30 שנה, בשנת 1948, החלו לשלוט במדינה האפריקאנרים (לבנים ממוצא הולנדי), על אף שרוב האזרחים היו שחורים. שלטון זה הנהיג משטר של הפרדה גזעית (אפּרטהייד) בין השחורים לבין הלבנים, והפלה לרעה את השחורים.</p>
<p>האפליה של השחורים חלה בכל תחומי החיים: </p>
<ol>
<li>אזורי המגורים, בתי-הספר, אמצעי התחבורה ושירותי הבריאות והתרבות </li>
<li>איסור נישואים בין שחורים ללבנים </li>
<li>שלילת זכויות האזרח של השחורים: רק לבנים יכלו לבחור ולהיבחר למוסדות השלטון </li></ol>
<p>וכך בדרום-אפריקה נדחקו השחורים לעבודות הקשות, אשר השכר שלהן מועט, והם סבלו מעוני ומרדיפת השלטונות. </p>
<p>נלסון מנדלה למד משפטים באוניברסיטה. הוא היה עורך הדין השחור הראשון בדרום-אפריקה, שהיה בבעלותו משרד עורכי-דין.</p>
<p>בשנת 1942 הוא הצטרף לתנועת ההתנגדות של השחורים בדרום-אפריקה, שנקראה: "הקונגרס הלאומי האפריקני" (ANC). הודות לפעילותו גדלה התנועה מאוד ומשכה המונים. מנדלה היה לאחד ממנהיגיה הבולטים. </p>
<p>בשנת 1960 התחולל בדרום-אפריקה האירוע הקשה: טבח שארפאוויל. היה זה כאשר שחורים רבים יצאו להפגין נגד שלטון הלבנים הגזעני, וכוחות המשטרה הרגו ופצעו רבים מהם. לאחר האירוע הזה החליט השלטון של הלבנים שתנועת הקונגרס הלאומי האפריקני אינה חוקית, והם עצרו את המנהיג – מנדלה. </p>
</div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</asp:Content>

