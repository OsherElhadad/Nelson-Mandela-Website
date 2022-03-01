<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>registration page</title>
<script type="text/javascript">
    var msg = "";
    function bdika() {
        msg = "";
        bdikaFName();  //בדיקת שם פרטי
        bdikaLName();  //בדיקת שם משפחה
        bdikaId();  //בדיקת תעודת זהות
        bdikaGender();  //בדיקת מין
        bdikaDate();  //בדיקת תאריך
        bdikaEmail();  //בדיקת אימייל
        bdikaRepeatEmail();  //בדיקת אימייל חוזר
        bdikaPassword();  //בדיקת סיסמה
        bdikaRepeatPassword();  //בדיקת סיסמה חוזרת
        bdikaStreet();  //בדיקת רחוב
        bdikaHousenumber();  //בדיקת מספר בית
        bdikaZipcode();  //בדיקת מיקוד
        bdikaCity();  //בדיקת עיר
        bdikaPhone();  //בדיקת טלפון
        bdikaHobby();  //בדיקת תחביב
        bdikaAbout();  //בדיקת מידע
        if (msg != "")
            return false;
        return true;
    }
    function bdikaFName() {  //בדיקת שם פרטי
        fName = document.form1.firstname.value;
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
            document.getElementById('e1').innerHTML = "השם הפרטי יכול להכיל רק אותיות בעברית ורווחים";
            msg += "השם הפרטי יכול להכיל רק אותיות בעברית מקף ורווחים";
            return;
        }
        document.getElementById('t1').style.color = "#33FF66";
        document.getElementById('fname').style.borderColor = "#33FF66";
        document.getElementById('e1').style.visibility = "visible";
        document.getElementById('e1').innerHTML = "תקין!";
        document.getElementById('e1').style.color = "#33FF66";
    }
    function bdikaLName() {  //בדיקת שם משפחה
        lName = document.form1.lastname.value;
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
            document.getElementById('e2').innerHTML = "שם המשפחה יכול להכיל רק אותיות בעברית ורווחים";
            msg += "שם המשפחה יכול להכיל רק אותיות בעברית מקף ורווחים";
            return;
        }
        document.getElementById('t2').style.color = "#33FF66";
        document.getElementById('lname').style.borderColor = "#33FF66";
        document.getElementById('e2').style.visibility = "visible";
        document.getElementById('e2').innerHTML = "תקין!";
        document.getElementById('e2').style.color = "#33FF66";
    }
    function bdikaId() {  //בדיקת תעודת זהות
        idNum = document.form1.IDnumber.value;
        numbers = "0123456789";
        if ((idNum.length != 9) || (!validchar(idNum, numbers))) {
            document.getElementById('t3').style.color = "#FF3333";
            document.getElementById('idnumber').style.borderColor = "#FF3333";
            document.getElementById('e3').style.visibility = "visible";
            document.getElementById('e3').style.color = "#FF3333";
            document.getElementById('e3').innerHTML = "תעודת הזהות חייבת להכיל 9 מספרים";
            msg += "תעודת הזהות חייבת להכיל 9 מספרים";
            return;
        }
        document.getElementById('t3').style.color = "#33FF66";
        document.getElementById('idnumber').style.borderColor = "#33FF66";
        document.getElementById('e3').style.visibility = "visible";
        document.getElementById('e3').innerHTML = "תקין!";
        document.getElementById('e3').style.color = "#33FF66";
    }
    function bdikaGender() {  //בדיקת מין
        bool = false;
        for (i = 0; i < document.form1.gender.length; i++)
            if (document.form1.gender[i].checked)
                bool = true;
        if (!bool) {
            document.getElementById('tm').style.color = "#FF3333";
            document.getElementById('em').style.visibility = "visible";
            document.getElementById('em').innerHTML = "יש לבחור מין";
            document.getElementById('em').style.color = "#FF3333";
            return;
        }
        document.getElementById('tm').style.color = "#33FF66";
        document.getElementById('em').style.visibility = "visible";
        document.getElementById('em').innerHTML = "תקין!";
        document.getElementById('em').style.color = "#33FF66";
    }
    function bdikaDate() {  //בדיקת תאריך
        mikum1 = document.form1.year.selectedIndex;
        mikum2 = document.form1.mounth.selectedIndex;
        mikum3 = document.form1.day.selectedIndex;
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
            document.getElementById('t4').style.color = "#FF3333";
            document.getElementById('e4').style.visibility = "visible";
            document.getElementById('e4').style.color = "#FF3333";
            document.getElementById('e4').innerHTML = "יש לבחור תאריך לידה";
            msg += "יש לבחור תאריך לידה";
            return;
        }
        document.getElementById('t4').style.color = "#33FF66";
        document.getElementById('years').style.borderColor = "#33FF66";
        document.getElementById('mounthes').style.borderColor = "#33FF66";
        document.getElementById('days').style.borderColor = "#33FF66";
        document.getElementById('e4').style.visibility = "visible";
        document.getElementById('e4').innerHTML = "תקין!";
        document.getElementById('e4').style.color = "#33FF66";
    }
    function bdikaEmail() {  //בדיקת אימייל
        var Email = document.form1.email.value;
        if (bdikaEtav(Email) && bdikaElength(Email) && bdikaEhuki(Email)) {
            document.getElementById('t5').style.color = "#33FF66";
            document.getElementById('email1').style.borderColor = "#33FF66";
            document.getElementById('e5').style.visibility = "visible";
            document.getElementById('e5').innerHTML = "תקין!";
            document.getElementById('e5').style.color = "#33FF66";
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
            document.getElementById('t5').style.color = "#FF3333";
            document.getElementById('email1').style.borderColor = "#FF3333";
            document.getElementById('e5').style.visibility = "visible";
            document.getElementById('e5').style.color = "#FF3333";
            document.getElementById('e5').innerHTML = "האימייל יכול להכיל רק אותיות באנגלית מקף נקודה ספרות קו תחתון ושטרודל";
            msg += "האימייל יכול להכיל רק אותיות באנגלית מקף נקודה ספרות קו תחתון ושטרודל";
            return false;
        }
        return true;
    }
    function bdikaElength(email) {  //בדיקת חוקיות אורך האימייל
        if (!(email.length >= 5 && email.length <= 50)) {
            document.getElementById('t5').style.color = "#FF3333";
            document.getElementById('email1').style.borderColor = "#FF3333";
            document.getElementById('e5').style.visibility = "visible";
            document.getElementById('e5').style.color = "#FF3333";
            document.getElementById('e5').innerHTML = "אורך האימייל חייב להיות בין 5-50";
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
                document.getElementById('t5').style.color = "#FF3333";
                document.getElementById('email1').style.borderColor = "#FF3333";
                document.getElementById('e5').style.visibility = "visible";
                document.getElementById('e5').style.color = "#FF3333";
                document.getElementById('e5').innerHTML = "האימייל לא חוקי";
                msg += "האימייל לא חוקי";
                return false;
            }
        }
        else {
            document.getElementById('t5').style.color = "#FF3333";
            document.getElementById('email1').style.borderColor = "#FF3333";
            document.getElementById('e5').style.visibility = "visible";
            document.getElementById('e5').style.color = "#FF3333";
            document.getElementById('e5').innerHTML = "האימייל לא חוקי";
            msg += "האימייל לא חוקי";
            return false;
        }
        return true;
    }
    function bdikaRepeatEmail() {  //בדיקת אימייל חוזר
        if (document.form1.repeatemail.value != document.form1.email.value || document.form1.repeatemail.value == "") {
            document.getElementById('t6').style.color = "#FF3333";
            document.getElementById('email2').style.borderColor = "#FF3333";
            document.getElementById('e6').style.visibility = "visible";
            document.getElementById('e6').style.color = "#FF3333";
            document.getElementById('e6').innerHTML = "האימייל ואימות האימייל חייבים להיות זהים";
            msg += "האימייל ואימות האימייל חייבים להיות זהים";
            return;
        }
        document.getElementById('t6').style.color = "#33FF66";
        document.getElementById('email2').style.borderColor = "#33FF66";
        document.getElementById('e6').style.visibility = "visible";
        document.getElementById('e6').innerHTML = "תקין!";
        document.getElementById('e6').style.color = "#33FF66";
    }
    function bdikaPassword() {  //בדיקת סיסמה
        pass = document.form1.password1.value;
        if (pass.length > 16 || pass.length < 6) {
            document.getElementById('t7').style.color = "#FF3333";
            document.getElementById('pass1').style.borderColor = "#FF3333";
            document.getElementById('e7').style.visibility = "visible";
            document.getElementById('e7').style.color = "#FF3333";
            document.getElementById('e7').innerHTML = "אורך הסיסמא חייב להיות בין 6-16";
            msg += "אורך הסיסמא חייב להיות בין 6-16";
            return;
        }
        document.getElementById('t7').style.color = "#33FF66";
        document.getElementById('pass1').style.borderColor = "#33FF66";
        document.getElementById('e7').style.visibility = "visible";
        document.getElementById('e7').innerHTML = "תקין!";
        document.getElementById('e7').style.color = "#33FF66";
    }
    function bdikaRepeatPassword() {  //בדיקת סיסמה חוזרת
        if (document.form1.repeatpassword.value != document.form1.password1.value || document.form1.repeatpassword.value == "") {
            document.getElementById('t8').style.color = "#FF3333";
            document.getElementById('pass2').style.borderColor = "#FF3333";
            document.getElementById('e8').style.visibility = "visible";
            document.getElementById('e8').style.color = "#FF3333";
            document.getElementById('e8').innerHTML = "הסיסמא ואימות הסיסמא חייבים להיות זהים";
            msg += "הסיסמא ואימות הסיסמא חייבים להיות זהים";
            return;
        }
        document.getElementById('t8').style.color = "#33FF66";
        document.getElementById('pass2').style.borderColor = "#33FF66";
        document.getElementById('e8').style.visibility = "visible";
        document.getElementById('e8').innerHTML = "תקין!";
        document.getElementById('e8').style.color = "#33FF66";
    }
    function bdikaStreet() {  //בדיקת רחוב
        st = document.form1.street.value;
        if (!NameLength(st, 4)) {
            document.getElementById('t9').style.color = "#FF3333";
            document.getElementById('street1').style.borderColor = "#FF3333";
            document.getElementById('e9').style.visibility = "visible";
            document.getElementById('e9').style.color = "#FF3333";
            document.getElementById('e9').innerHTML = "שם הרחוב יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח, או מקף, יחיד וכל מילה מכילה לפחות 2 אותיות";
            msg += "שם הרחוב יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(st) != 2) {
            document.getElementById('t9').style.color = "#FF3333";
            document.getElementById('street1').style.borderColor = "#FF3333";
            document.getElementById('e9').style.visibility = "visible";
            document.getElementById('e9').style.color = "#FF3333";
            if (NameSofiot(st) == 0) {
                document.getElementById('e9').innerHTML = "שם הרחוב יכול להכיל אותיות סופיות רק בסוף מילה";
                msg += "שם הרחוב יכול להכיל אותיות סופיות רק בסוף מילה";
            }
            else {
                document.getElementById('e9').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
            }
            return;
        }
        tavimMutarim = "-אבגדהוזחטיכלמנסעפצקרשתםןךףץ ";
        if (!validchar(st, tavimMutarim)) {
            document.getElementById('t9').style.color = "#FF3333";
            document.getElementById('street1').style.borderColor = "#FF3333";
            document.getElementById('e9').style.visibility = "visible";
            document.getElementById('e9').style.color = "#FF3333";
            document.getElementById('e9').innerHTML = "שם הרחוב יכול להכיל רק אותיות בעברית ורווחים";
            msg += "שם הרחוב יכול להכיל רק אותיות בעברית מקף ורווחים";
            return;
        }
        document.getElementById('t9').style.color = "#33FF66";
        document.getElementById('street1').style.borderColor = "#33FF66";
        document.getElementById('e9').style.visibility = "visible";
        document.getElementById('e9').innerHTML = "תקין!";
        document.getElementById('e9').style.color = "#33FF66";
    }
    function bdikaHousenumber() {  //בדיקת מספר בית
        hNum = document.form1.housenumber.value;
        validchars = "0123456789";
        if ((!(hNum.length >= 1 && hNum.length <= 5)) || (!validchar(hNum, validchars))) {
            document.getElementById('t10').style.color = "#FF3333";
            document.getElementById('hnum').style.borderColor = "#FF3333";
            document.getElementById('e10').style.visibility = "visible";
            document.getElementById('e10').style.color = "#FF3333";
            document.getElementById('e10').innerHTML = "מספר הבית יכול להכיל בין 1-5 מספרים";
            msg += "מספר הבית יכול להכיל בין 1-5 מספרים";
            return;
        }
        document.getElementById('t10').style.color = "#33FF66";
        document.getElementById('hnum').style.borderColor = "#33FF66";
        document.getElementById('e10').style.visibility = "visible";
        document.getElementById('e10').innerHTML = "תקין!";
        document.getElementById('e10').style.color = "#33FF66";
    }
    function bdikaZipcode() {  //בדיקת מיקוד
        zNum = document.form1.zipcode.value;
        nums = "0123456789";
        if ((zNum.length != 5) || (!validchar(zNum, nums))) {
            document.getElementById('t11').style.color = "#FF3333";
            document.getElementById('zipcode1').style.borderColor = "#FF3333";
            document.getElementById('e11').style.visibility = "visible";
            document.getElementById('e11').style.color = "#FF3333";
            document.getElementById('e11').innerHTML = "המיקוד חייב להכיל 5 מספרים";
            msg += "המיקוד חייב להכיל 5 מספרים";
            return;
        }
        document.getElementById('t11').style.color = "#33FF66";
        document.getElementById('zipcode1').style.borderColor = "#33FF66";
        document.getElementById('e11').style.visibility = "visible";
        document.getElementById('e11').innerHTML = "תקין!";
        document.getElementById('e11').style.color = "#33FF66";
    }
    function bdikaCity() {  //בדיקת עיר
        mikum = document.form1.city.selectedIndex;
        c = document.form1.yeshuv.value;
        if ((mikum == 0 && c.length == 0) || (mikum != 0 && c.length != 0)) {
            document.getElementById('t12').style.color = "#FF3333";
            document.getElementById('t13').style.color = "#FF3333";
            document.getElementById('cities').style.borderColor = "#FF3333";
            document.getElementById('tcity').style.borderColor = "#FF3333";
            document.getElementById('e12').style.visibility = "visible";
            document.getElementById('e12').style.color = "#FF3333";
            document.getElementById('e12').innerHTML = "יש לבחור או לרשום (אחת מן האפשרויות) את עיר מגוריך";
            msg += "יש לבחור או לרשום (אחת מן האפשרויות) את עיר מגוריך";
            return;
        }
        if (mikum == 0 && c.length != 0) {
            if (!NameLength(c, 4)) {
                document.getElementById('t12').style.color = "#FF3333";
                document.getElementById('t13').style.color = "#FF3333";
                document.getElementById('tcity').style.borderColor = "#FF3333";
                document.getElementById('cities').style.borderColor = "#FF3333";
                document.getElementById('e12').style.visibility = "visible";
                document.getElementById('e12').style.color = "#FF3333";
                document.getElementById('e12').innerHTML = "שם העיר יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד, או מקף, וכל מילה מכילה לפחות 2 אותיות";
                msg += "שם העיר יכול להכיל עד 4 מילים המופרדות ביניהן על ידי רווח יחיד וכל מילה מכילה לפחות 2 אותיות";
                return;
            }
            if (NameSofiot(c) != 2) {
                document.getElementById('t12').style.color = "#FF3333";
                document.getElementById('t13').style.color = "#FF3333";
                document.getElementById('tcity').style.borderColor = "#FF3333";
                document.getElementById('cities').style.borderColor = "#FF3333";
                document.getElementById('e12').style.visibility = "visible";
                document.getElementById('e12').style.color = "#FF3333";
                if (NameSofiot(c) == 0) {
                    document.getElementById('e12').innerHTML = "שם העיר יכול להכיל אותיות סופיות רק בסוף מילה";
                    msg += "שם העיר יכול להכיל אותיות סופיות רק בסוף מילה";
                }
                else {
                    document.getElementById('e12').innerHTML = "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                msg += "רווח או מקף אינו יכול להופיע ליד רווח או מקף";
                }
                return;
            }
            tavimMutarim = "אבגדהוזחטיכלמנסעפצקרשתםןךףץ- ";
            if (!validchar(c, tavimMutarim)) {
                document.getElementById('t12').style.color = "#FF3333";
                document.getElementById('t13').style.color = "#FF3333";
                document.getElementById('tcity').style.borderColor = "#FF3333";
                document.getElementById('cities').style.borderColor = "#FF3333";
                document.getElementById('e12').style.visibility = "visible";
                document.getElementById('e12').style.color = "#FF3333";
                document.getElementById('e12').innerHTML = "שם העיר יכול להכיל רק אותיות בעברית ורווחים";
                msg += "שם העיר יכול להכיל רק אותיות בעברית מקף ורווחים";
                return;
            }
            document.getElementById('t13').style.color = "#33FF66";
            document.getElementById('tcity').style.borderColor = "#33FF66";
            document.getElementById('e12').style.visibility = "visible";
            document.getElementById('e12').innerHTML = "תקין!";
            document.getElementById('e12').style.color = "#33FF66";
        }
        document.getElementById('t12').style.color = "#33FF66";
        document.getElementById('t13').style.color = "#33FF66";
        document.getElementById('cities').style.borderColor = "#33FF66";
        document.getElementById('tcity').style.borderColor = "#33FF66";
        document.getElementById('e12').style.visibility = "visible";
        document.getElementById('e12').innerHTML = "תקין!";
        document.getElementById('e12').style.color = "#33FF66";
    }
    function bdikaHobby() {  //בדיקת תחביב
        bNo = 0;
        if (document.form1.hobby[0].checked) {
            bNo = 1;
        }
        for (i = 1; i < document.form1.hobby.length; i++) {
            if (document.form1.hobby[i].checked) {
                if (bNo == 1)
                    bNo = 2;
                if (bNo == 0)
                    bNo = 3;
            }
        }
        if (bNo == 0 || bNo == 2) {
            document.getElementById('th').style.color = "#FF3333";
            document.getElementById('eh').style.visibility = "visible";
            document.getElementById('eh').style.color = "#FF3333";
            document.getElementById('eh').innerHTML = "יש לבחור תחביב אחד לפחות, אחרת בחר אחר (רק אחת מן האפשרויות)";
            return;
        }
        document.getElementById('th').style.color = "#33FF66";
        document.getElementById('eh').style.visibility = "visible";
        document.getElementById('eh').innerHTML = "תקין!";
        document.getElementById('eh').style.color = "#33FF66";
    }
    function bdikaPhone() {  //בדיקת טלפון
        phone = document.form1.telephone.value;
        if (!(phone.length >= 9 && phone.length <= 10)) {
            document.getElementById('t14').style.color = "#FF3333";
            document.getElementById('phone').style.borderColor = "#FF3333";
            document.getElementById('e14').style.visibility = "visible";
            document.getElementById('e14').style.color = "#FF3333";
            document.getElementById('e14').innerHTML = "אורך מספר הטלפון הוא בין 9-10";
            return;
        }
        valid = "1234567890";
        if (!validchar(phone, valid)) {
            document.getElementById('t14').style.color = "#FF3333";
            document.getElementById('phone').style.borderColor = "#FF3333";
            document.getElementById('e14').style.visibility = "visible";
            document.getElementById('e14').style.color = "#FF3333";
            document.getElementById('e14').innerHTML = "מספר הטלפון מכיל רק ספרות";
            return;
        }
        if (phone.charAt(0) != 0) {
            document.getElementById('t14').style.color = "#FF3333";
            document.getElementById('phone').style.borderColor = "#FF3333";
            document.getElementById('e14').style.visibility = "visible";
            document.getElementById('e14').style.color = "#FF3333";
            document.getElementById('e14').innerHTML = "הספרה הראשונה במספר הטלפון חייבת להיות אפס";
            return;
        }
        document.getElementById('t14').style.color = "#33FF66";
        document.getElementById('phone').style.borderColor = "#33FF66";
        document.getElementById('e14').style.visibility = "visible";
        document.getElementById('e14').style.color = "#33FF66";
        document.getElementById('e14').innerHTML = "תקין!";
        return;
    }
    function bdikaAbout() {  //בדיקת מידע
        textA = document.form1.special.value;
        if (textA == "") {
            document.getElementById('t15').style.color = "#33FF66";
            document.getElementById('special1').style.borderColor = "#33FF66";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').innerHTML = "תקין!";
            document.getElementById('et').style.color = "#33FF66";
            return;
        }
        if (!NameLength(textA, 150)) {
            document.getElementById('t15').style.color = "#FF3333";
            document.getElementById('special1').style.borderColor = "#FF3333";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').style.color = "#FF3333";
            document.getElementById('et').innerHTML = "הטקסט החופשי יכול להכיל עד 150 מילים המופרדות ביניהן על ידי רווח יחיד, או מקף, וכל מילה מכילה לפחות 2 אותיות";
            msg += "הטקסט החופשי יכול להכיל עד 150 מילים המופרדות ביניהן על ידי רווח יחיד, או מקף, וכל מילה מכילה לפחות 2 אותיות";
            return;
        }
        if (NameSofiot(textA) != 2) {
            document.getElementById('t15').style.color = "#FF3333";
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
            document.getElementById('t15').style.color = "#FF3333";
            document.getElementById('special1').style.borderColor = "#FF3333";
            document.getElementById('et').style.visibility = "visible";
            document.getElementById('et').style.color = "#FF3333";
            document.getElementById('et').innerHTML = "הטקסט החופשי יכול להכיל רק אותיות בעברית סימני הפיסוק :-!?,.() ורווחים";
            msg += "הטקסט החופשי יכול להכיל רק אותיות בעברית סימני הפיסוק :-!?,.() ורווחים";
            return;
        }
        document.getElementById('t15').style.color = "#33FF66";
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
        losofiot="נצמכפ";
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
    #reg {
     background: #555;   
     border-bottom: 2px solid Red;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="form.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:82%; margin-top:30px; margin-right:92px; border-radius:20px; border:2px solid white; box-shadow:0 0 3px #AAA; background:#CCC; padding:10px;">
<form onsubmit="return bdika()" action="" name="form1" style="color:#333"><label style="color:#33FF66"><%=cmsg%></label>
<h1 style="color:Gray; font-family:Segoe UI Semilight; text-align:center">הרשמה</h1>
<table>
    <tr onkeyup="bdikaFName()">
        <td style="font-size:large" id="t1">שם פרטי:</td>
        <td><input type="text" name="firstname" size="30" maxlength="20" placeholder="הכנס בין 2-20 אותיות בעברית ורווחים" id="fname" /></td><td><i class="fa fa-exclamation-triangle" id="e1" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaLName()">
        <td style="font-size:large" id="t2">שם משפחה:</td>
        <td><input type="text" name="lastname" size="30" maxlength="20" placeholder="הכנס בין 2-20 אותיות בעברית ורווחים" id="lname" /></td><td><i class="fa fa-exclamation-triangle" id="e2" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaId()">
        <td style="font-size:large" id="t3">תעודת זהות:</td>
        <td><input type="text" name="IDnumber" size="30" maxlength="9" placeholder="הכנס 9 ספרות" id="idnumber" /></td><td><i class="fa fa-exclamation-triangle" id="e3" style="visibility:hidden"></i></td>
    </tr>
    <tr>
        <td style="font-size:large" id="tm">מגדר:</td>
    </tr>
    <tr onchange="bdikaGender()">
        <td style="color:Blue">נקבה</td>
        <td><input type="radio" name="gender" value="female" /></td><td rowspan="2"><i class="fa fa-exclamation-triangle" id="em" style="visibility:hidden"></i></td>
    </tr>
    <tr onchange="bdikaGender()">
        <td style="color:Blue">זכר</td>
        <td><input type="radio" name="gender" value="male" /></td>
    </tr>
    <tr onchange="bdikaDate()">
        <td style="font-size:large" id="t4">תאריך לידה:</td>
<td><select name="year" id="years">
<option value="">שנה</option>
<%=year %>
</select>
<select name="mounth" id="mounthes">
<option value="">חודש</option>
<%=month %>
</select>
<select name="day" id="days">
<option value="">יום</option>
<%=day %>
</select></td><td><i class="fa fa-exclamation-triangle" id="e4" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaEmail()">
        <td style="font-size:large" id="t5">אימייל:</td>
        <td><input type="text" name="email" size="30" maxlength="50" placeholder="הכנס בין 5-50 תווים" id="email1" /></td><td><i class="fa fa-exclamation-triangle" id="e5" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaRepeatEmail()">
        <td style="font-size:large" id="t6">אימות אימייל:</td>
        <td><input type="text" name="repeatemail" size="30" maxlength="50" placeholder="הכנס בין 5-50 תווים" id="email2" /></td><td><i class="fa fa-exclamation-triangle" id="e6" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaPassword()">
        <td style="font-size:large" id="t7">סיסמא:</td>
        <td><input type="password" name="password1" size="30" maxlength="16" placeholder="הכנס בין 6-16 תווים" id="pass1" /></td><td><i class="fa fa-exclamation-triangle" id="e7" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaRepeatPassword()">
        <td style="font-size:large" id="t8">אימות סיסמא:</td>
        <td><input type="password" name="repeatpassword" size="30" maxlength="16" placeholder="הכנס בין 6-16 תווים" id="pass2" /></td><td><i class="fa fa-exclamation-triangle" id="e8" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaStreet()">
        <td style="font-size:large" id="t9">רחוב:</td>
        <td><input type="text" name="street" size="30" maxlength="20" placeholder="הכנס בין 2-20 אותיות בעברית ורווחים" id="street1" /></td><td><i class="fa fa-exclamation-triangle" id="e9" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaHousenumber()">
        <td style="font-size:large" id="t10">מספר בית:</td>
        <td><input type="text" name="housenumber" size="30" maxlength="5" placeholder="הכנס בין 1-5 ספרות" id="hnum" /></td><td><i class="fa fa-exclamation-triangle" id="e10" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaZipcode()">
        <td style="font-size:large" id="t11">מיקוד:</td>
        <td><input type="text" name="zipcode" size="30" maxlength="5" placeholder="הכנס 5 ספרות" id="zipcode1" /></td><td><i class="fa fa-exclamation-triangle" id="e11" style="visibility:hidden"></i></td>
    </tr>
    <tr onchange="bdikaCity()">
        <td style="font-size:large" id="t12">עיר:</td>
        <td><select name="city" id="cities">
            <option value="0">--אחר--</option>
            <option value="סלעית">סלעית</option>
            <option value="מתן">מתן</option>
            <option value="ירחיב">ירחיב</option>
            <option value="צופית">צופית</option>
            <option value="כפר סבא">כפר סבא</option>
            <option value="רמות השבים">רמות השבים</option>
            <option value="פתח תקווה">פתח תקווה</option>
            <option value="נווה ימין">נווה ימין</option>
            <option value="צור יצחק">צור יצחק</option>
            <option value="גן חיים">גן חיים</option>
            <option value="רעננה">רעננה</option>
            <option value="הרצליה">הרצליה</option>
        </select></td><td rowspan="2"><i class="fa fa-exclamation-triangle" id="e12" style="visibility:hidden"></i></td>
    </tr>
    <tr onkeyup="bdikaCity()">
        <td style="font-size:large" id="t13">אחר:</td>
        <td><input type="text" name="yeshuv" size="30" maxlength="20" placeholder="הכנס בין 2-20 אותיות בעברית ורווחים" id="tcity" /></td>
    </tr>
    <tr onkeyup="bdikaPhone()">
        <td style="font-size:large" id="t14">מספר טלפון:</td>
        <td><input type="text" name="telephone" size="30" maxlength="10" placeholder="הכנס 9 או 10 ספרות" id="phone" /></td><td><i class="fa fa-exclamation-triangle" id="e14" style="visibility:hidden"></i></td>
    </tr>
    <tr>
        <td style="font-size:large" id="th">תחביבים:</td>
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">אחר</td>
        <td><input type="checkbox" name="hobby" id="h1" value="אחר" checked /></td> <td rowspan="8"><i class="fa fa-exclamation-triangle" id="eh" style="visibility:hidden"></i></td>
    </tr>
    <tr onchange="bdikaHobby()">     
        <td style="color:Blue">כדורגל</td>
        <td><input type="checkbox" name="hobby" id="h2" value="כדורגל" /></td>
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">טניס</td>
        <td><input type="checkbox" name="hobby" id="h3" value="טניס" /></td> 
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">מחשב</td>
        <td><input type="checkbox" name="hobby" id="h4" value="מחשב" /></td> 
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">כדורסל</td>
        <td><input type="checkbox" name="hobby" id="h5" value="כדורסל" /></td> 
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">ריקוד</td>
        <td><input type="checkbox" name="hobby" id="h6" value="ריקוד" /></td> 
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">ספרים</td>
        <td><input type="checkbox" name="hobby" id="h7" value="ספרים" /></td> 
    </tr>
    <tr onchange="bdikaHobby()">
        <td style="color:Blue">שחייה</td>
        <td><input type="checkbox" name="hobby" id="h8" value="שחייה" /></td> 
    </tr>
    <tr>
        <td style="font-size:large" id="t15">פרטים נוספים:</td>
    </tr> 
    <tr onkeyup="bdikaAbout()">
        <td><textarea maxlength="300" rows="6" name="special" id="special1" placeholder="קצת על עצמי..."></textarea></td><td style="width:10px"><i class="fa fa-exclamation-triangle" id="et" style="visibility:hidden"></i></td>
    </tr>
    <tr>
        <td><input type="submit" name="submit" value="הרשם" /></td>
        <td><input type="reset" value="נקה" /></td>
    </tr>
</table>     
</form>
</div>
</asp:Content>

