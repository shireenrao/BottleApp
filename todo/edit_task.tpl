%#template for editing a task
%#the template expects to receive a value for "no" as well a "old", the text of the selected ToDo item
%old_val, status = old
%selected = 'selected="selected"'
<p>Edit the task with ID = {{no}}</p>
<form action="/edit/{{no}}" method="get">
<input type="text" name="task" value="{{old_val}}" size="100" maxlength="100">
<select name="status">
%if status == 1:
<option selected="selected">open</option>
<option>closed</option>
%else:
<option>open</option>
<option selected="selected">closed</option>
%end
</select>
<br/>
<input type="submit" name="save" value="save">
</form>
