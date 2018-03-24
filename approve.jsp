<!DOCTYPE HTML>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="css/style.css" rel="stylesheet">
</head>

<body lang=EN-US>
<script src="assets/js/tableedit.js"></script>

<div class=WordSection1>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span style='position:absolute;z-index:251659264;left:0px;margin-left:
613px;margin-top:41px;width:136px;height:59px'></span><span lang=HE style='font-family:
"Arial",sans-serif'>הזן מספר נ&quot;ש: <b>_</b></span><span dir=LTR></span><b><span
dir=LTR><span dir=LTR></span>_<span style='background:aqua'>reqid</span></span></b><span
lang=HE style='font-family:"Arial",sans-serif'>                                                         סטאטוס
נ&quot;ש <b>_</b></span><b><span dir=LTR>reqexternalstat</span></b><span
dir=RTL></span><b><span lang=HE style='font-family:"Arial",sans-serif'><span
dir=RTL></span>_</span></b></p>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span lang=HE style='font-family:"Arial",sans-serif'>פרויקט אחראי: <b>_</b></span><b><span
dir=LTR style='background:aqua'>project</span></b><span dir=RTL></span><b><span
lang=HE style='font-family:"Arial",sans-serif'><span dir=RTL></span>_</span></b><span
lang=HE style='font-family:"Arial",sans-serif'>                                                      סטאטוס
בקשה:  <b>_</b></span><b><span dir=LTR>reqstat</span></b><span dir=RTL></span><b><span
lang=HE style='font-family:"Arial",sans-serif'><span dir=RTL></span>_</span></b></p>

<div style='border-top:double windowtext 2.25pt;border-left:none;border-bottom:
double windowtext 2.25pt;border-right:none;padding:1.0pt 0in 1.0pt 0in'>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed;border:none;padding:0in'><span lang=HE style='font-family:"Arial",sans-serif'>הערות
המערכת: _</span><span dir=LTR>REQNOTES</span><span dir=RTL></span><span
lang=HE style='font-family:"Arial",sans-serif'><span dir=RTL></span>_ (למשל, לא
נמצא נ&quot;ש מתאים)</span></p>

</div>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span lang=HE style='font-family:"Arial",sans-serif'>תוכניות חדשות או תוכניות אשר עוברות שינוי:</span></p>

<div align=right>

  <table align='center' cellspacing=2 cellpadding=5 id="data_table" border=1>
    <tr>
    <th>קוד תוכנית</th><th>פעולה</th>
    </tr>
  <tr id="row1">
  <td id="name_row1">TROLSBMT</td>
  <td>
  <input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('1')">
  <input type="button" id="save_button1" value="Save" class="save" onclick="save_row('1')">
  <input type="button" value="Delete" class="delete" onclick="delete_row('1')">
  </td>
  </tr>

  <tr>
  <td><input type="text" id="new_name"></td>
  <td><input type="button" class="add" onclick="add_row();" value="Add Row"></td>
  </tr>

  </table>
</div>
<div style='border:none;border-bottom:double windowtext 2.25pt;padding:0in 0in 1.0pt 0in'>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed;border:none;padding:0in'><span lang=HE style='font-family:"Arial",sans-serif;
color:red'>שים לב: תוכניות שלא יופיעו בסעיף זה לא יוגדרו בסביבת הייצור וידרש
נ&quot;ש חדש</span></p>

</div>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span lang=HE style='font-family:"Arial",sans-serif'>טרנזקציות חדשות או קיימות אשר מושפעות מהשינוי:</span></p>

<div align=right>

<table class=MsoTableGrid dir=rtl border=1 cellspacing=0 cellpadding=0
 width="100%" style='width:100.0%;border-collapse:collapse;border:none'>
 <tr>
  <td width="16%" valign=top style='width:16.64%;border:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>קוד טרנזקציה</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>קוד פעולה</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>מספר הפעלות מתוכנן לאחר השינוי</span></p>
  </td>
  <td width="25%" valign=top style='width:25.28%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>תאריך בדיקה לגרסה חדשה בסביבת
  ה</span><span dir=LTR>SystemTest</span></p>
  </td>
  <td width="24%" valign=top style='width:24.82%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>תאריך בדיקה לגרסה קודמת לצורך
  השוואה</span></p>
  </td>
 </tr>
 <tr>
  <td width="16%" valign=top style='width:16.64%;border:solid windowtext 1.0pt;
  border-top:none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>(ברירת מחדל  </span><span
  dir=LTR>PXT </span><span lang=HE style='font-family:"Arial",sans-serif'>לפי
  רוטינות או לפי נתוני </span><span dir=LTR>DB2</span><span dir=RTL></span><span
  lang=HE style='font-family:"Arial",sans-serif'><span dir=RTL></span> רוטינות )</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>(ברירת מחדל  לפי </span><span
  dir=LTR>CPR</span><span dir=RTL></span><span lang=HE style='font-family:"Arial",sans-serif'><span
  dir=RTL></span> במגבלה עד 10 ק&quot;פ שונים)</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>(ברירת מחדל תלקח מהפעלות
  בייצור אם ישנן)</span></p>
  </td>
  <td width="25%" valign=top style='width:25.28%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>(ברירת מחדל תבחר כיום עם הכי
  הרבה הפעלות בחודש האחרון)</span></p>
  </td>
  <td width="24%" valign=top style='width:24.82%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>(ילקח מה</span><span dir=LTR>DB</span><span
  dir=RTL></span><span style='font-family:"Arial",sans-serif'><span dir=RTL></span>
  <span lang=HE>מההעברה הקודמת, אלא אם כן לא מופיע)</span></span></p>
  </td>
 </tr>
 <tr>
  <td width="16%" valign=top style='width:16.64%;border:solid windowtext 1.0pt;
  border-top:none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>(מקסימום שורות 20 כברירת מחדל)</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="25%" valign=top style='width:25.28%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="24%" valign=top style='width:24.82%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="16%" valign=top style='width:16.64%;border:solid windowtext 1.0pt;
  border-top:none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="16%" valign=top style='width:16.64%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="25%" valign=top style='width:25.28%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;background:#D9E2F3;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="24%" valign=top style='width:24.82%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
</table>

</div>

<div style='border:none;border-bottom:double windowtext 2.25pt;padding:0in 0in 1.0pt 0in'>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed;border:none;padding:0in'><span lang=HE style='font-family:"Arial",sans-serif'>המערכת
ממליצה על רשימת הטרנזקציות עפ&quot;י סריקת קוד, ניתן לערוך את הרשימה על פי
הצורך.</span></p>

</div>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span lang=HE style='font-family:"Arial",sans-serif'>תעופות ותקלות
בטרנזקציות:</span></p>

<div align=right>

<table class=MsoTableGrid dir=rtl border=1 cellspacing=0 cellpadding=0
 width="100%" style='width:100.0%;border-collapse:collapse;border:none'>
 <tr>
  <td width="15%" valign=top style='width:15.52%;border:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>קוד טרנזקציה</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  dir=LTR>ABENDS</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  dir=LTR>STORAGE VIOLATIONS</span></p>
  </td>
 </tr>
 <tr>
  <td width="15%" valign=top style='width:15.52%;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="15%" valign=top style='width:15.52%;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="15%" valign=top style='width:15.52%;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="42%" valign=top style='width:42.24%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
</table>

</div>

<div style='border:none;border-bottom:double windowtext 2.25pt;padding:0in 0in 1.0pt 0in'>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed;border:none;padding:0in'><span lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>

</div>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span lang=HE style='font-family:"Arial",sans-serif'>הפרש ביצועים
עפ&quot;י טרנזקציה:</span></p>

<div align=right>

<table class=MsoTableGrid dir=rtl border=1 cellspacing=0 cellpadding=0
 width="100%" style='width:100.0%;border-collapse:collapse;border:none'>
 <tr>
  <td width="15%" valign=top style='width:15.32%;border:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>קוד טרנזקציה</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  dir=LTR>CPU</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  dir=LTR>DBREQS</span></p>
  </td>
  <td width="20%" valign=top style='width:20.22%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  dir=LTR>DB/COBOL %</span></p>
  </td>
  <td width="33%" valign=top style='width:33.66%;border:solid windowtext 1.0pt;
  border-right:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  dir=LTR>E/DSA</span></p>
  </td>
 </tr>
 <tr>
  <td width="15%" valign=top style='width:15.32%;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="20%" valign=top style='width:20.22%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="33%" valign=top style='width:33.66%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="15%" valign=top style='width:15.32%;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="20%" valign=top style='width:20.22%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="33%" valign=top style='width:33.66%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
 <tr>
  <td width="15%" valign=top style='width:15.32%;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="15%" valign=top style='width:15.4%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="20%" valign=top style='width:20.22%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
  <td width="33%" valign=top style='width:33.66%;border-top:none;border-left:
  solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:
  none;padding:0in 5.4pt 0in 5.4pt'>
  <p class=MsoNormal dir=RTL style='margin-bottom:0in;margin-bottom:.0001pt;
  text-align:right;line-height:normal;direction:rtl;unicode-bidi:embed'><span
  lang=HE style='font-family:"Arial",sans-serif'>&nbsp;</span></p>
  </td>
 </tr>
</table>

</div>

<div style='border:none;border-bottom:double windowtext 2.25pt;padding:0in 0in 1.0pt 0in'>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed;border:none;padding:0in'><span dir=LTR>&nbsp;</span></p>

</div>

<p class=MsoNormal dir=RTL style='text-align:right;direction:rtl;unicode-bidi:
embed'><span lang=HE style='font-family:"Arial",sans-serif'>סיכום והמלצת
המערכת: _המלצה_ (סה&quot;כ השפעה </span><span dir=LTR>MIPS</span><span dir=RTL></span><span
lang=HE style='font-family:"Arial",sans-serif'><span dir=RTL></span> + תעופות ובעיות
אחרות</span></p>

</div>
<p align='center'>
<img src="images\lightgreen.png" width="10%" </img>
</p>
</body>

</html>
