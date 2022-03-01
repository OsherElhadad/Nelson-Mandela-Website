<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="images.aspx.cs" Inherits="imeges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    i = 1;
    function nextPic() {
        i++;
        if (i == 21)
            i = 1;
        pic.src = "nelson images/images" + i + ".jpg";
    }
    function prevPic() {
        i--;
        if (i == 0)
            i = 20;
        pic.src = "nelson images/images" + i + ".jpg";
    }
    function choosePic(p) {
        i = p;
        pic.src = "nelson images/images" + p + ".jpg";
    }
    function changeColor() {
        pic.style.borderColor = document.choosecolor.c.value;
    }
</script>
<style type="text/css">
#image {
    background: #555;
    border-bottom: 2px solid Red;
}
#im
{
    -webkit-transition:all 2s;
    transition:all 2s;
    width:350px;
    height:300px;
    border-color:Black;
    border-width:10px;
    border-style:solid;
}
#im:hover
{
    height:400px;
    width:800px;
}
#n {
    -webkit-transition:all 2s;
    transition:all 2s;
    width:10px;
    height:10px;
    }
    #n:hover {
        font-size:xx-large;
        color:Green;
        width:20px;
    height:20px;
    }
#p {
    -webkit-transition:all 2s;
    transition:all 2s;
    width:10px;
    height:10px;
    }
    #p:hover {
        font-size:xx-large;
        color:Red;
        width:20px;
    height:20px;
    }
    #b {
    color:Yellow; 
    font-size:medium;
    }
    a:hover img {
        border: 5px solid #0000ff;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:fixed"><a href="images.aspx#top"><i class="fa fa-arrow-circle-up fa-2x" style="transition: all 0.5s" id="up"></i></a></div>
<div style="direction:rtl; width:84%; background-color:<%=userColor%>; margin-top:30px; margin-right:92px; border-radius:20px;"><br /><center>
<h1 style="text-decoration:underline">תמונות-</h1><br />עבור על התמונה והתמונה תגדל<br />
<img name="pic" src="nelson images/images1.jpg" onmouseover="changeColor()" id="im" /><br /><br />
<a onclick="nextPic()" style="cursor:pointer" id="n">קדימה<i class="fa fa-share fa-3x"></i></a>
<a onclick="prevPic()" style="cursor:pointer" id="p"><i class="fa fa-reply fa-3x"></i>אחורה</a><br /><br />
<div dir="ltr" id="b">
<a onclick="choosePic(1)"><img src="nelson images/images1.jpg" width="40px" height="40px" id="Img1" /> </a><a onclick="choosePic(2)"><img src="nelson images/images2.jpg" width="40px" height="40px" id="Img2" /> </a><a onclick="choosePic(3)"><img src="nelson images/images3.jpg" width="40px" height="40px" id="Img3" /> </a><a onclick="choosePic(4)"><img src="nelson images/images4.jpg" width="40px" height="40px" id="Img4" /> </a><a onclick="choosePic(5)"><img src="nelson images/images5.jpg" width="40px" height="40px" id="Img5" /> </a><a onclick="choosePic(6)"><img src="nelson images/images6.jpg" width="40px" height="40px" id="Img6" /> </a><a onclick="choosePic(7)"><img src="nelson images/images7.jpg" width="40px" height="40px" id="Img7" /> </a><a onclick="choosePic(8)"><img src="nelson images/images8.jpg" width="40px" height="40px" id="Img8" /> </a><a onclick="choosePic(9)"><img src="nelson images/images9.jpg" width="40px" height="40px" id="Img9" /> </a>|<a onclick="choosePic(10)"><img src="nelson images/images10.jpg" width="40px" height="40px" id="Img10" /> </a><a onclick="choosePic(11)"><img src="nelson images/images11.jpg" width="40px" height="40px" id="Img11" /> </a><a onclick="choosePic(12)"><img src="nelson images/images12.jpg" width="40px" height="40px" id="Img12" /> </a>|<a onclick="choosePic(13)"><img src="nelson images/images13.jpg" width="40px" height="40px" id="Img13" /> </a><a onclick="choosePic(14)"><img src="nelson images/images14.jpg" width="40px" height="40px" id="Img14" /> </a><a onclick="choosePic(15)"><img src="nelson images/images15.jpg" width="40px" height="40px" id="Img15" /> </a><a onclick="choosePic(16)"><img src="nelson images/images16.jpg" width="40px" height="40px" id="Img16" /> </a>|<a onclick="choosePic(17)"><img src="nelson images/images17.jpg" width="40px" height="40px" id="Img17" /> </a><a onclick="choosePic(18)"><img src="nelson images/images18.jpg" width="40px" height="40px" id="Img18" /> </a><a onclick="choosePic(19)"><img src="nelson images/images19.jpg" width="40px" height="40px" id="Img19" /> </a><a onclick="choosePic(20)"><img src="nelson images/images20.jpg" width="40px" height="40px" id="Img20" /></a>
</div>
<br />
<form name="choosecolor">
<input type="text" name="c" size="80" id="te" style="height:30px; border-radius:20px; border:1px solid #999; padding:5px; font-family:Times New Roman" placeholder="רשום כאן צבע באנגלית ולאחר מכן עבור על התמונה והצבע שרשמת יהיה צבע הגבול של התמונה" />
</form>
</center>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</asp:Content>

