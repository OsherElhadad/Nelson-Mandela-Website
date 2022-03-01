<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>home page</title>
<style type="text/css">
    #main {
        background: #555;
        border-bottom: 2px solid Red;
    }
        #login1 
        {
    border:2px solid white;
    border-radius:10px;
    box-shadow:0 0 3px #AAA;
    width:400px;
    background:#CCC;
    padding:10px;
    overflow:auto;
    font-family:serif;
}
marquee
{
    color:Blue;
    width:300px;
height:200px;
-webkit-transition:all 2s;
transition:all 2s;
}
marquee:hover 
{
    -webkit-transform:rotate(720deg);
transform:rotate(720deg);
    width:500px;
height:300px;
color:White;
background-color:Blue;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="Default.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:ltr; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;"><center><div><%=msg1 %></div></center><div style="margin-right:10px; float:right">מספר כניסות לאתר: <%= (int)Application["mis"] %></div><a name="logina"></a><br /><div dir="rtl" style="visibility:<%=msg4 %>">
<form id="login1" method="post" action="" style="color:#333">
    <table>
    <tr><th colspan="2">משתמש רשום   <i class="fa fa-user fa-fw"></i></th></tr>
    <tr><td><font color="red"><%=msg2 %></font> </td></tr>
    <tr><td>תעודת זהות</td>
    <td><input type="text" name="id" maxlength="9" placeholder="הכנס 9 ספרות" /></td></tr>
    
    <tr><td>סיסמה</td>
    <td><input type="password" name="password" maxlength="15" placeholder="הכנס בין 6-16 תווים" /></td></tr>
    
    <tr><td colspan="2"><input type="submit" name="enterSite" value="כניסה לאתר" />
    </td></tr>
    
    
    <tr><td>לא משתמש רשום? <a href="form.aspx" style="text-decoration:none;color:black;"><strong>הרשם כאן</strong><i class="fa fa-pencil fa-fw"></i></a></td></tr>

    </table>
    
    </form>
    </div><br /><br />
<marquee style="direction:rtl; border-radius:20px" behavior="scroll" direction="up" scrollamount="3" Bgcolor="white"><div id="mtext">ברוכים הבאים אתר של נלסון מנדלה! <br /><br /> האתר בנושא: האחר הוא אני<br /><br /><br /><br />נושא האתר קשור לנושא "האחר הוא אני" בכך שהוא קשור לגזענות.<br /><br /> ניתן לראות שמנדלה היה שונה משאר האנשים בעיקר בגלל צבע עורו.<br /><br /> למרות שמנדלה היה "אחר", הוא הצליח בחייו, שמר על עקרונותיו של סובלנות וקבלת האחר והגשים את מטרותיו.</div></marquee><br /><br />
<div style="direction:ltr"><a name="youtube"></a><iframe width="450" height="360" src="//www.youtube.com/embed/FRi8PD7_jBY?feature=player_detailpage" frameborder="0" allowfullscreen></iframe></div><br /><br />
</div>
</asp:Content>

