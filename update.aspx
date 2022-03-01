<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    var msg = "";
    function bdika() {
        msg = "";
        bdikaFName();  //בדיקת שם פרטי
        bdikaLName();  //בדיקת שם משפחה
        bdikaGender();  //בדיקת מין
        bdikaDate();  //בדיקת תאריך
        bdikaEmail();  //בדיקת אימייל
        bdikaPassword();  //בדיקת סיסמה
        bdikaStreet();  //בדיקת רחוב
        bdikaHousenumber();  //בדיקת מספר בית
        bdikaZipcode();  //בדיקת מיקוד
        bdikaCity();  //בדיקת עיר
        bdikaPhone();  //בדיקת טלפון
        bdikaAbout();  //בדיקת מידע
        if (msg != "")
            return false;
        return true;
    }
    function bdikaFName() {  //בדיקת שם פרטי
        fName = document.form2.fname.value;
        if (!NameLength(fName, 4)) {
            document.getElementById('t1').style.color = "#FF3333";
            document.getElementById('fname').style.borderColor = "#FF3333";
            document.getElementById('e1').style.visibility = "visible";
            document.getElementById('e1').style.color = "#FF3333";
            document.getElementById('e1').innerHTML = "השם הפרטי יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח, או מקף, יחיד וכל מילה מכילה לפחות 2 אותיות";
            msg += "השם הפרטי יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(fName) != 2) {
            document.getElementById('t1').style.color = "#FF3333";
            document.getElementById('fname').style.borderColor = "#FF3333";
            document.getElementById('e1').style.visibility = "visible";
            document.getElementById('e1').style.color = "#FF3333";
            if (NameSofiot(fName) == 0) {
                document.getElementById('e1').innerHTML = "השם הפרטי יכול להכיל אותיות סופיות רק בסוף מילה";
                msg += "השם הפרטי יכול להכיל אותיות סופיות רק בסוף מילה";
            }
            else {
                document.getElementById('e1').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
            }
            return;
        }
        tavimMutarim = "אבגדהוזחטיכלמנסעפצקרשתםןךףץ- ";
        if (!validchar(fName, tavimMutarim)) {
            document.getElementById('t1').style.color = "#FF3333";
            document.getElementById('fname').style.borderColor = "#FF3333";
            document.getElementById('e1').style.visibility = "visible";
            document.getElementById('e1').style.color = "#FF3333";
            document.getElementById('e1').innerHTML = "השם הפרטי יכול להכיל רק אותיות בעברית";
            msg += "השם הפרטי יכול להכיל רק אותיות בעברית מקף";
            return;
        }
        document.getElementById('t1').style.color = "#33FF66";
        document.getElementById('fname').style.borderColor = "#33FF66";
        document.getElementById('e1').style.visibility = "visible";
        document.getElementById('e1').innerHTML = "תקין!";
        document.getElementById('e1').style.color = "#33FF66";
    }
    function bdikaLName() {  //בדיקת שם משפחה
        lName = document.form2.lname.value;
        if (!NameLength(lName, 4)) {
            document.getElementById('t2').style.color = "#FF3333";
            document.getElementById('lname').style.borderColor = "#FF3333";
            document.getElementById('e2').style.visibility = "visible";
            document.getElementById('e2').style.color = "#FF3333";
            document.getElementById('e2').innerHTML = "שם המשפחה יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח, או מקף, יחיד וכל מילה מכילה לפחות 2 אותיות";
            msg += "שם המשפחה יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(lName) != 2) {
            document.getElementById('t2').style.color = "#FF3333";
            document.getElementById('lname').style.borderColor = "#FF3333";
            document.getElementById('e2').style.visibility = "visible";
            document.getElementById('e2').style.color = "#FF3333";
            if (NameSofiot(lName) == 0) {
                document.getElementById('e2').innerHTML = "שם המשפחה יכול להכיל אותיות סופיות רק בסוף מילה";
                msg += "שם המשפחה יכול להכיל אותיות סופיות רק בסוף מילה";
            }
            else {
                document.getElementById('e2').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
            }
            return;
        }
        tavimMutarim = "אבגדהוזחטיכלמנסעפצקרשתםןךףץ- ";
        if (!validchar(lName, tavimMutarim)) {
            document.getElementById('t2').style.color = "#FF3333";
            document.getElementById('lname').style.borderColor = "#FF3333";
            document.getElementById('e2').style.visibility = "visible";
            document.getElementById('e2').style.color = "#FF3333";
            document.getElementById('e2').innerHTML = "שם המשפחה יכול להכיל רק אותיות בעברית";
            msg += "שם המשפחה יכול להכיל רק אותיות בעברית מקף";
            return;
        }
        document.getElementById('t2').style.color = "#33FF66";
        document.getElementById('lname').style.borderColor = "#33FF66";
        document.getElementById('e2').style.visibility = "visible";
        document.getElementById('e2').innerHTML = "תקין!";
        document.getElementById('e2').style.color = "#33FF66";
    }
    function bdikaGender() {  //בדיקת מין
        bool = false;
        for (i = 0; i < document.form2.gender.length; i++)
            if (document.form2.gender[i].checked)
                bool = true;
        if (!bool) {
            document.getElementById('tm').style.color = "#FF3333";
            document.getElementById('em').style.visibility = "visible";
            document.getElementById('em').innerHTML = "יש לבחור מין";
            document.getElementById('em').style.color = "#FF3333";
            msg += "יש לבחור מין";
            return;
        }
        document.getElementById('tm').style.color = "#33FF66";
        document.getElementById('em').style.visibility = "visible";
        document.getElementById('em').innerHTML = "תקין!";
        document.getElementById('em').style.color = "#33FF66";
    }
    function bdikaDate() {  //בדיקת תאריך
        mikum1 = document.form2.year.selectedIndex;
        mikum2 = document.form2.mounth.selectedIndex;
        mikum3 = document.form2.day.selectedIndex;
        if (mikum1 == 0 || mikum2 == 0 || mikum3 == 0) {
            if (mikum1 == 0)
                document.getElementById('years').style.borderColor = "#FF3333";
            else
                document.getElementById('years').style.borderColor = "#33FF66";
            if (mikum2 == 0)
                document.getElementById('mounthes').style.borderColor = "#FF3333";
            else
                document.getElementById('mounthes').style.borderColor = "#33FF66";
            if (mikum3 == 0)
                document.getElementById('days').style.borderColor = "#FF3333";
            else
                document.getElementById('days').style.borderColor = "#33FF66";
            document.getElementById('t6').style.color = "#FF3333";
            document.getElementById('e6').style.visibility = "visible";
            document.getElementById('e6').style.color = "#FF3333";
            document.getElementById('e6').innerHTML = "יש לבחור תאריך לידה";
            msg += "יש לבחור תאריך לידה";
            return;
        }
        document.getElementById('t6').style.color = "#33FF66";
        document.getElementById('years').style.borderColor = "#33FF66";
        document.getElementById('mounthes').style.borderColor = "#33FF66";
        document.getElementById('days').style.borderColor = "#33FF66";
        document.getElementById('e6').style.visibility = "visible";
        document.getElementById('e6').innerHTML = "תקין!";
        document.getElementById('e6').style.color = "#33FF66";
    }
    function bdikaEmail() {  //בדיקת אימייל
        var Email = document.form2.mail.value;
        if (bdikaEtav(Email) && bdikaElength(Email) && bdikaEhuki(Email)) {
            document.getElementById('t3').style.color = "#33FF66";
            document.getElementById('email1').style.borderColor = "#33FF66";
            document.getElementById('e3').style.visibility = "visible";
            document.getElementById('e3').innerHTML = "תקין!";
            document.getElementById('e3').style.color = "#33FF66";
        }
    }
    function bdikaEtav(email) {  //בדיקת חוקיות תווי האימייל
        var validchar = "abcdefghijklmnopqrstvuwxyzABCDEFGHIJKLMNOPQRSTVUWXYZ-.0123456789_@";
        var error = true;
        for (i = 0; i < email.length && error; i++) {
            tav = email.charAt(i);
            if (validchar.indexOf(tav) == -1)
                error = false;
        }
        if (!error) {
            document.getElementById('t3').style.color = "#FF3333";
            document.getElementById('email1').style.borderColor = "#FF3333";
            document.getElementById('e3').style.visibility = "visible";
            document.getElementById('e3').style.color = "#FF3333";
            document.getElementById('e3').innerHTML = "האימייל יכול להכיל רק אותיות באנגלית מקף נקודה ספרות קו תחתון ושטרודל";
            msg += "האימייל יכול להכיל רק אותיות באנגלית מקף נקודה ספרות קו תחתון ושטרודל";
            return false;
        }
        return true;
    }
    function bdikaElength(email) {  //בדיקת חוקיות אורך האימייל
        if (!(email.length >= 5 && email.length <= 50)) {
            document.getElementById('t3').style.color = "#FF3333";
            document.getElementById('email1').style.borderColor = "#FF3333";
            document.getElementById('e3').style.visibility = "visible";
            document.getElementById('e3').style.color = "#FF3333";
            document.getElementById('e3').innerHTML = "אורך האימייל חייב להיות בין 5-50";
            msg += "אורך האימייל חייב להיות בין 5-50";
            return false;
        }
        return true;
    }
    function bdikaEhuki(email) {  //בדיקת חוקיות האימייל
        if ((email.split('@').length == 2) && (email.split('@')[0] != "") && (email.split('@')[1] != "") && (email.charAt(email.indexOf('@') + 1) != '.') && (email.charAt(email.indexOf('@') - 1) != '.') && (email.charAt(email.indexOf('@') + 1) != '-') && (email.charAt(email.indexOf('@') - 1) != '-') &&
        (email.charAt(email.indexOf('@') + 1) != '_') && (email.charAt(email.indexOf('@') - 1) != '_') && (email.charAt(email.indexOf('.') + 1) != '.') && (email.charAt(email.indexOf('.') - 1) != '.') && (email.split('@')[1].split('.').length < 4) &&
        (email.charAt(email.indexOf('.') + 1) != '-') && (email.charAt(email.indexOf('.') - 1) != '-') && (email.charAt(email.indexOf('.') + 1) != '_') && (email.charAt(email.indexOf('.') - 1) != '_') && (email.charAt(email.indexOf('_') + 1) != '_') && (email.charAt(email.indexOf('_') - 1) != '_') &&
        (email.charAt(email.indexOf('_') + 1) != '-') && (email.charAt(email.indexOf('_') - 1) != '-') && (email.charAt(email.indexOf('_') - 1) != '.') && (email.charAt(email.indexOf('_') + 1) != '.') && (email.charAt(email.indexOf('-') - 1) != '_') && (email.charAt(email.indexOf('-') + 1) != '-') &&
        (email.charAt(email.indexOf('-') - 1) != '-') && (email.split('@')[1].charAt(email.split('@')[1].indexOf('.') + 1) != '.') && (email.split('@')[1].charAt(email.split('@')[1].indexOf('.') - 1) != '.') && (email.split('@')[1].indexOf('-') == -1) && (email.split('@')[1].indexOf('_') == -1) &&
        (email.split('@')[1].indexOf('.') != -1) && (email.split('.')[0] != "") && (email.split('.')[email.split('.').length - 1] != "") && (email.charAt(0) != '-') && (email.charAt(email.length - 1) != '-') && (email.charAt(0) != '_') && (email.charAt(email.length - 1) != '_')) {
            var flag = true;
            for (i = '0'; i <= '9' && flag; i++) {
                if ((email.charAt(0) == i) || (email.charAt(email.length - 1) == i))
                    flag = false;
            }
            if (!flag) {
                document.getElementById('t3').style.color = "#FF3333";
                document.getElementById('email1').style.borderColor = "#FF3333";
                document.getElementById('e3').style.visibility = "visible";
                document.getElementById('e3').style.color = "#FF3333";
                document.getElementById('e3').innerHTML = "האימייל לא חוקי";
                msg += "האימייל לא חוקי";
                return false;
            }
        }
        else {
            document.getElementById('t3').style.color = "#FF3333";
            document.getElementById('email1').style.borderColor = "#FF3333";
            document.getElementById('e3').style.visibility = "visible";
            document.getElementById('e3').style.color = "#FF3333";
            document.getElementById('e3').innerHTML = "האימייל לא חוקי";
            msg += "האימייל לא חוקי";
            return false;
        }
        for (i = 0; i < email.length - 1; i++)
            if (email.charAt(i) == ' ' && email.charAt(i + 1) != ' ') {
                document.getElementById('t3').style.color = "#FF3333";
                document.getElementById('email1').style.borderColor = "#FF3333";
                document.getElementById('e3').style.visibility = "visible";
                document.getElementById('e3').style.color = "#FF3333";
                document.getElementById('e3').innerHTML = "האימייל לא חוקי";
                msg += "האימייל לא חוקי";
                return false;
            }
            return true;
    }
    function bdikaPassword() {  //בדיקת סיסמה
        pass = document.form2.password.value;
        if (pass.length > 16 || pass.length < 6) {
            document.getElementById('t5').style.color = "#FF3333";
            document.getElementById('pass1').style.borderColor = "#FF3333";
            document.getElementById('e5').style.visibility = "visible";
            document.getElementById('e5').style.color = "#FF3333";
            document.getElementById('e5').innerHTML = "אורך הסיסמא חייב להיות בין 6-16";
            msg += "אורך הסיסמא חייב להיות בין 6-16";
            return;
        }
        document.getElementById('t5').style.color = "#33FF66";
        document.getElementById('pass1').style.borderColor = "#33FF66";
        document.getElementById('e5').style.visibility = "visible";
        document.getElementById('e5').innerHTML = "תקין!";
        document.getElementById('e5').style.color = "#33FF66";
    }
    function bdikaStreet() {  //בדיקת רחוב
        st = document.form2.street.value;
        if (!NameLength(st, 4)) {
            document.getElementById('t7').style.color = "#FF3333";
            document.getElementById('street1').style.borderColor = "#FF3333";
            document.getElementById('e7').style.visibility = "visible";
            document.getElementById('e7').style.color = "#FF3333";
            document.getElementById('e7').innerHTML = "שם הרחוב יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח, או מקף, יחיד וכל מילה מכילה לפחות 2 אותיות";
            msg += "שם הרחוב יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(st) != 2) {
            document.getElementById('t7').style.color = "#FF3333";
            document.getElementById('street1').style.borderColor = "#FF3333";
            document.getElementById('e7').style.visibility = "visible";
            document.getElementById('e7').style.color = "#FF3333";
            if (NameSofiot(st) == 0) {
                document.getElementById('e7').innerHTML = "שם הרחוב יכול להכיל אותיות סופיות רק בסוף מילה";
                msg += "שם הרחוב יכול להכיל אותיות סופיות רק בסוף מילה";
            }
            else {
                document.getElementById('e7').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
            }
            return;
        }
        tavimMutarim = "-אבגדהוזחטיכלמנסעפצקרשתםןךףץ ";
        if (!validchar(st, tavimMutarim)) {
            document.getElementById('t7').style.color = "#FF3333";
            document.getElementById('street1').style.borderColor = "#FF3333";
            document.getElementById('e7').style.visibility = "visible";
            document.getElementById('e7').style.color = "#FF3333";
            document.getElementById('e7').innerHTML = "שם הרחוב יכול להכיל רק אותיות בעברית";
            msg += "שם הרחוב יכול להכיל רק אותיות בעברית מקף";
            return;
        }
        document.getElementById('t7').style.color = "#33FF66";
        document.getElementById('street1').style.borderColor = "#33FF66";
        document.getElementById('e7').style.visibility = "visible";
        document.getElementById('e7').innerHTML = "תקין!";
        document.getElementById('e7').style.color = "#33FF66";
    }
    function bdikaHousenumber() {  //בדיקת מספר בית
        hNum = document.form2.housenumber.value;
        validchars = "0123456789";
        if ((!(hNum.length >= 1 && hNum.length <= 5)) || (!validchar(hNum, validchars))) {
            document.getElementById('t8').style.color = "#FF3333";
            document.getElementById('hnum').style.borderColor = "#FF3333";
            document.getElementById('e8').style.visibility = "visible";
            document.getElementById('e8').style.color = "#FF3333";
            document.getElementById('e8').innerHTML = "מספר הבית יכול להכיל בין 1-5 מספרים";
            msg += "מספר הבית יכול להכיל בין 1-5 מספרים";
            return;
        }
        document.getElementById('t8').style.color = "#33FF66";
        document.getElementById('hnum').style.borderColor = "#33FF66";
        document.getElementById('e8').style.visibility = "visible";
        document.getElementById('e8').innerHTML = "תקין!";
        document.getElementById('e8').style.color = "#33FF66";
    }
    function bdikaZipcode() {
        zNum = document.form2.zipcode.value;
        nums = "0123456789";
        if ((zNum.length != 5) || (!validchar(zNum, nums))) {
            document.getElementById('t9').style.color = "#FF3333";
            document.getElementById('zipcode1').style.borderColor = "#FF3333";
            document.getElementById('e9').style.visibility = "visible";
            document.getElementById('e9').style.color = "#FF3333";
            document.getElementById('e9').innerHTML = "המיקוד חייב להכיל 5 מספרים";
            msg += "המיקוד חייב להכיל 5 מספרים";
            return;
        }
        document.getElementById('t9').style.color = "#33FF66";
        document.getElementById('zipcode1').style.borderColor = "#33FF66";
        document.getElementById('e9').style.visibility = "visible";
        document.getElementById('e9').innerHTML = "תקין!";
        document.getElementById('e9').style.color = "#33FF66";
    }
    function bdikaCity() {  //בדיקת עיר
        c = document.form2.city.value;
        if (!NameLength(c, 4)) {
            document.getElementById('t10').style.color = "#FF3333";
            document.getElementById('tcity').style.borderColor = "#FF3333";
            document.getElementById('e10').style.visibility = "visible";
            document.getElementById('e10').style.color = "#FF3333";
            document.getElementById('e10').innerHTML = "שם העיר יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד, או מקף, וכל מילה מכילה לפחות 2 אותיות";
            msg += "שם העיר יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(c) != 2) {
            document.getElementById('t10').style.color = "#FF3333";
            document.getElementById('tcity').style.borderColor = "#FF3333";
            document.getElementById('e10').style.visibility = "visible";
            document.getElementById('e10').style.color = "#FF3333";
            if (NameSofiot(c) == 0) {
                document.getElementById('e10').innerHTML = "שם העיר יכול להכיל אותיות סופיות רק בסוף מילה";
                msg += "שם העיר יכול להכיל אותיות סופיות רק בסוף מילה";
            }
            else {
                document.getElementById('e10').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
            }
            return;
        }
        tavimMutarim = "אבגדהוזחטיכלמנסעפצקרשתםןךףץ- ";
        if (!validchar(c, tavimMutarim)) {
            document.getElementById('t10').style.color = "#FF3333";
            document.getElementById('tcity').style.borderColor = "#FF3333";
            document.getElementById('e10').style.visibility = "visible";
            document.getElementById('e10').style.color = "#FF3333";
            document.getElementById('e10').innerHTML = "שם העיר יכול להכיל רק אותיות בעברית";
            msg += "שם העיר יכול להכיל רק אותיות בעברית מקף";
            return;
        }
        document.getElementById('t10').style.color = "#33FF66";
        document.getElementById('tcity').style.borderColor = "#33FF66";
        document.getElementById('e10').style.visibility = "visible";
        document.getElementById('e10').innerHTML = "תקין!";
        document.getElementById('e10').style.color = "#33FF66";
    }
    function bdikaPhone() {  //בדיקת טלפון
        phone = document.form2.phonenumber.value;
        if (!(phone.length >= 9 && phone.length <= 11)) {
            document.getElementById('t4').style.color = "#FF3333";
            document.getElementById('phone').style.borderColor = "#FF3333";
            document.getElementById('e4').style.visibility = "visible";
            document.getElementById('e4').style.color = "#FF3333";
            document.getElementById('e4').innerHTML = "אורך מספר הטלפון הוא בין 9-11";
            msg += "אורך מספר הטלפון הוא בין 9-11";
            return;
        }
        valid = "1234567890";
        if (!validchar(phone, valid)) {
            document.getElementById('t4').style.color = "#FF3333";
            document.getElementById('phone').style.borderColor = "#FF3333";
            document.getElementById('e4').style.visibility = "visible";
            document.getElementById('e4').style.color = "#FF3333";
            document.getElementById('e4').innerHTML = "מספר הטלפון מכיל רק ספרות";
            msg += "מספר הטלפון מכיל רק ספרות";
            return;
        }
        if (phone.charAt(0) != 0) {
            document.getElementById('t4').style.color = "#FF3333";
            document.getElementById('phone').style.borderColor = "#FF3333";
            document.getElementById('e4').style.visibility = "visible";
            document.getElementById('e4').style.color = "#FF3333";
            document.getElementById('e4').innerHTML = "הספרה הראשונה במספר הטלפון חייבת להיות אפס";
            msg += "הספרה הראשונה במספר הטלפון חייבת להיות אפס";
            return;
        }
        document.getElementById('t4').style.color = "#33FF66";
        document.getElementById('phone').style.borderColor = "#33FF66";
        document.getElementById('e4').style.visibility = "visible";
        document.getElementById('e4').style.color = "#33FF66";
        document.getElementById('e4').innerHTML = "תקין!";
        return;
    }
    function bdikaAbout() {  //בדיקת מידע
        textA = document.form2.special.value;
        if (textA == "") {
            document.getElementById('t11').style.color = "#33FF66";
            document.getElementById('special1').style.borderColor = "#33FF66";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').innerHTML = "תקין!";
            document.getElementById('et').style.color = "#33FF66";
            return;
        }
        if (!NameLength(textA, 175)) {
            document.getElementById('t11').style.color = "#FF3333";
            document.getElementById('special1').style.borderColor = "#FF3333";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').style.color = "#FF3333";
            document.getElementById('et').innerHTML = "הטקסט החופשי יכול להכיל עד 150 מילים המופרדות ביניהן על ידי רווח יחיד, או מקף, וכל מילה מכילה לפחות 2 אותיות";
            msg += "הטקסט החופשי יכול להכיל עד 150 מילים המופרדות ביניהן על ידי רווח יחיד, או מקף, וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(textA) != 2) {
            document.getElementById('t11').style.color = "#FF3333";
            document.getElementById('special1').style.borderColor = "#FF3333";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').style.color = "#FF3333";
            if (NameSofiot(textA) == 0) {
                document.getElementById('et').innerHTML = "הטקסט החופשי יכול להכיל אותיות סופיות רק בסוף מילה";
                msg += "הטקסט החופשי יכול להכיל אותיות סופיות רק בסוף מילה";
            }
            else {
                document.getElementById('et').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
            }
            return;
        }
        tavimMutarim = "אבגדהוזחטיכלמנסעפצקרשתםןךףץ!?',.():- ";
        if (!validchar(textA, tavimMutarim)) {
            document.getElementById('t11').style.color = "#FF3333";
            document.getElementById('special1').style.borderColor = "#FF3333";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').style.color = "#FF3333";
            document.getElementById('et').innerHTML = "הטקסט החופשי יכול להכיל רק אותיות בעברית סימני הפיסוק :-!?,.() ורווחים";
            msg += "הטקסט החופשי יכול להכיל רק אותיות בעברית סימני הפיסוק :-!?,.() ורווחים";
            return;
        }
        document.getElementById('t11').style.color = "#33FF66";
        document.getElementById('special1').style.borderColor = "#33FF66";
        document.getElementById('et').style.visibility = "visible";
        document.getElementById('et').innerHTML = "תקין!";
        document.getElementById('et').style.color = "#33FF66";
    }
    function validchar(str, tavim) {  //בדיקת חוקיות תווים (כללית)
        for (i = 0; i < str.length; i++) {
            tav = str.charAt(i);
            if (tavim.indexOf(tav) == -1)
                return false;
        }
        return true;
    }
    function NameSofiot(Name) {  //בדיקת חוקיות מילים בעברית (כללית)
        spliterName = Name.split(' ');
        sofiot = "ףךםץן";
        losofiot = "נצמכפ";
        for (i = 0; i < spliterName.length; i++) {
            for (j = 0; j < spliterName[i].length - 1; j++) {
                tav = spliterName[i].charAt(j);
                if (sofiot.indexOf(tav) != -1 && spliterName[i].charAt(j + 1) != '-')
                    return 0;
            }
        }
        for (i = 0; i < spliterName.length; i++) {
            if (losofiot.indexOf(spliterName[i].charAt(spliterName[i].length - 1)) != -1)
                return 0;
        }
        spliterName = Name.split('-');
        for (i = 0; i < spliterName.length; i++) {
            for (j = 0; j < spliterName[i].length - 1; j++) {
                tav = spliterName[i].charAt(j);
                if (sofiot.indexOf(tav) != -1 && spliterName[i].charAt(j + 1) != ' ')
                    return 0;
            }
        }
        for (i = 0; i < spliterName.length; i++) {
            if (losofiot.indexOf(spliterName[i].charAt(spliterName[i].length - 1)) != -1)
                return 0;
        }
        for (i = 1; i < Name.length; i++)
            if ((Name.charAt(i) == ' ' && Name.charAt(i - 1) == '-') || (Name.charAt(i) == ' ' && Name.charAt(i - 1) == '-') || (Name.charAt(i) == '-' && Name.charAt(i - 1) == '-') || (Name.charAt(i) == ' ' && Name.charAt(i - 1) == ' '))
                return 1;
        return 2;
    }
    function NameLength(Name, num) {  //בדיקת חוקיות אורך מחרוזת (כללית)
        spliterName = Name.split(' ');
        var bool = true;
        for (i = 0; i < spliterName.length && bool; i++)
            if (spliterName[i].length < 2)
                bool = false;
        if (spliterName.length > num)
            bool = false;
        spliterName = Name.split('-');
        for (i = 0; i < spliterName.length && bool; i++)
            if (spliterName[i].length < 2)
                bool = false;
        if (spliterName.length > num)
            bool = false;
        if (bool)
            return true;
        else
            return false;
    }
</script>
<style type="text/css">
#edit {
    background: #555;
    border-bottom: 2px solid Red;
}
#ed {
    background: #666;
    border-bottom: 2px solid Yellow;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="update.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;">
<center>
    <div id="msg" >
    כדי לשנות את פרטי המשתמש אנא הכנס חדשים במקומות המתאימים
    </div>
    <% =userDetails %>
    <font color="green"><%=mupdate%></font>
    </center><br /><br />
</div>
</asp:Content>

