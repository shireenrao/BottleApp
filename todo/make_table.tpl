%#template to generate a HTML table from a list of tuples (or a list of lists,
%#or tuples of tuples or ..)
%if type=='1':
  <p>The open itmes are as follow:</p>
%else:
  <p>The closed itmes are as follow:</p>
%end
<table border="1">
%for row in rows:
  %id, title = row
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
    <td><a href="/edit/{{id}}">Edit</a></td>
  </tr>
%end
</table>
<p>Create <a href="/new">New</a> item</p>
%if type =='1':
  <p>Show <a href="/done">Done</a> Items</p>
%else:
 <p>Go <a href="/">Home</a></p>
%end
