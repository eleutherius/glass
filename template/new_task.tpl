% rebase('template/base.tpl', title='New')

<p>Добавить в рядок в таблицу:</p>
<form action="/new" method="POST" accept-charset="utf-8">
<input type="text" size="100" maxlength="100" name="task">
<input type="submit" name="save" value="Сохранить">
</form>
<p><a href="/admin">Домой</a></p>
