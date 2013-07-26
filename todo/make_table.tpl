%#template to generate a HTML table from a list of tuples (or a list of lists,
%#or tuples of tuples or ..)
<p>The open itmes are as follow:</p>
<table border="1">
%for row in rows:
  <tr>
  %for col in row:
    <td>{{col}}</td>
  %end
  </tr>
%end
</table>
