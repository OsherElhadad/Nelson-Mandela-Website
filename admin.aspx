<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#edit {
    background: #555;
    border-bottom: 2px solid Red;
}
#edu {
    background: #666;
    border-bottom: 2px solid Yellow;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="position:fixed"><a href="admin.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:250%; background-color:#EFB76D; margin-top:30px; margin-right:92px; border-radius:20px;">
<br />
<div style="margin-right:15px; font-size:larger; margin-left:15px">
<h1> מנהל האתר - הצגת משתמשי האתר לפי חתכים שונים</h1>
<form action="" method="post">
      הצגת כל המשתמשים הרשומים  
      <input type="submit" name="allUsers" value="הצג את כל המשתמשים הרשומים" style="right:0" />
</form>
<br />

<form action="" method="post">
      שם פרטי: <input type="text" name="firstName" />
      <input type="submit" name="byFirstName" value="הצג לפי שם פרטי" />
      <input type="submit" name="byFirstPrefix" value="הצג לפי תחילת שם פרטי" />
</form>
<br />

<form action="" method="post">
      שם משפחה: <input type="text" name="lastName" />
      <input type="submit" name="byLastName" value="הצג לפי שם משפחה" />
      <input type="submit" name="byLastPrefix" value="הצג לפי תחילת שם משפחה" />
</form>
<br />

<form action="" method="post">
      תעודת זהות : <input type="text" name="ID" />
      <input type="submit" name="byID" value="הצג לפי תעודת זהות" />
      <input type="submit" name="byIDPrefix" value="הצג לפי תחילת תעודת זהות" />
</form>
<br />

<form action="" method="post">
      מין : <input type="text" name="gender" />
      <input type="submit" name="bygender" value="הצג לפי מין" />
      <input type="submit" name="bygenderPrefix" value="הצג לפי תחילת מין" />
</form>
<br />

<form action="" method="post">
      שנת לידה : <input type="text" name="year" />
      <input type="submit" name="byyear" value="הצג לפי שנת לידה" />
      <input type="submit" name="byyearPrefix" value="הצג לפי תחילת שנת לידה" />
</form>
<br />

<form action="" method="post">
      חודש לידה : <input type="text" name="mounth" />
      <input type="submit" name="bymounth" value="הצג לפי חודש לידה" />
      <input type="submit" name="bymounthPrefix" value="הצג לפי תחילת חודש לידה" />
</form>
<br />

<form action="" method="post">
      יום לידה : <input type="text" name="day" />
      <input type="submit" name="byday" value="הצג לפי יום לידה" />
      <input type="submit" name="bydayPrefix" value="הצג לפי תחילת יום לידה" />
</form>
<br />

<form action="" method="post">
      דואר אלקטרוני : <input type="text" name="email" />
      <input type="submit" name="byemail" value="הצג לפי דואר אלקטרוני" />
      <input type="submit" name="byemailPrefix" value="הצג לפי תחילת דואר אלקטרוני" />
</form>
<br />

<form action="" method="post">
      סיסמא : <input type="text" name="password" />
      <input type="submit" name="bypassword" value="הצג לפי סיסמא" />
      <input type="submit" name="bypasswordPrefix" value="הצג לפי תחילת סיסמא" />
</form>
<br />

<form action="" method="post">
      רחוב : <input type="text" name="street" />
      <input type="submit" name="bystreet" value="הצג לפי רחוב" />
      <input type="submit" name="bystreetPrefix" value="הצג לפי תחילת רחוב" />
</form>
<br />

<form action="" method="post">
      מספר בית : <input type="text" name="housenumber" />
      <input type="submit" name="byhousenumber" value="הצג לפי מספר בית" />
      <input type="submit" name="byhousenumberPrefix" value="הצג לפי מספר בית" />
</form>
<br />

<form action="" method="post">
      מיקוד : <input type="text" name="zipcode" />
      <input type="submit" name="byzipcode" value="הצג לפי מיקוד" />
      <input type="submit" name="byzipcodePrefix" value="הצג לפי תחילת מיקוד" />
</form>
<br />

<form action="" method="post">
      עיר : <input type="text" name="city" />
      <input type="submit" name="bycity" value="הצג לפי עיר" />
      <input type="submit" name="bycityPrefix" value="הצג לפי תחילת עיר" />
</form>
<br />

<form action="" method="post">
      טלפון : <input type="text" name="phone" />
      <input type="submit" name="byphone" value="הצג לפי מספר טלפון" />
      <input type="submit" name="byphonePrefix" value="הצג לפי תחילת מספר טלפון" />
</form>
<br />

<form action="" method="post">
      פרטים : <input type="text" name="info" />
      <input type="submit" name="byinfo" value="הצג לפי פרטים" />
      <input type="submit" name="byinfoPrefix" value="הצג לפי תחילת פרטים" />
</form>
<br />

<form action="" method="post">
      מנהל (y זה מנהל וn זה לא מנהל) : <input type="text" name="manager" />
      <input type="submit" name="bymanager" value="הצג לפי מנהל" />
</form>
<br />
       <%=usersList%>
 
       מספר המשתמשים המוצגים
       <% =usersCount%></div> <br /><br /></div>
</asp:Content>

