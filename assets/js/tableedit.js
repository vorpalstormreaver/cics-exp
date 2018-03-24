function edit_row(no)
{
 document.getElementById("edit_button"+no).style.display="none";
 document.getElementById("save_button"+no).style.display="block";

 var name=document.getElementById("name_row"+no);


 var name_data=name.innerHTML;


 name.innerHTML="<input type='text' id='name_text"+no+"' value='"+name_data+"'>";

}

function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

function save_row(no)
{
 var name_val=document.getElementById("name_text"+no).value;


 document.getElementById("name_row"+no).innerHTML=name_val;


 document.getElementById("edit_button"+no).style.display="block";
 document.getElementById("save_button"+no).style.display="none";
}

function delete_row(no)
{
 document.getElementById("row"+no+"").outerHTML="";
}

function add_row()
{
 var new_name=document.getElementById("new_name").value;
 var table=document.getElementById("data_table");
 var table_len=uuidv4();
 var lastpos = (table.rows.length)-1;
 var row = table.insertRow(lastpos).outerHTML="<tr id='row"+table_len+"'><td id='name_row"+table_len+"'>"+new_name+"</td>"+"<td><input type='button' id='edit_button"+table_len+"' value='Edit' class='edit' onclick='edit_row(\""+table_len+"\")'> <input type='button' id='save_button"+table_len+"' value='Save' class='save' onclick='save_row(\""+table_len+"\")'> <input type='button' value='Delete' class='delete' onclick='delete_row(\""+table_len+"\")'></td>"+"</tr>";
 document.getElementById("new_name").value="";


}
