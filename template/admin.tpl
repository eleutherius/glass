% rebase('template/base.tpl', title='Table')

<h1 align="center">Реальный журнал возвратов</h1>
<table border="1" align="center" style="font-size: 16pt; color: #212121;">

  <tr>

    <td><p>#</p></td>
    <td><p>Дата прихода</p></td>
    <td><p>Контрагент</p></td>
    <td><p>№ Декларакци</p></td>
    <td><p>Контакт отправителя </p></td>
    <td><p>Оборудование</p></td>
    <td><p>Серийник</p></td>
    <td><p>МАК</p></td>
    <td><p>Причина возврата</p></td>
    <td><p>Принято</p></td>
    <td><p>Диагноз</p></td>
    <td><p>Решение</p></td>
    <td><p>Дата отгрузки</p></td>
    <td><p>№ Декларации</p></td>
    <td><p>Контакты получателя</p></td>
    <td><p>Номер в 1С</p></td>
    <td><p>Обработано</p></td>
  </tr>

</table>

<table border="1" align="center" style="font-size: 16pt; color: #212121;">
%for row3 in rows3:
  <tr>
  %for a in row3:
    <td><p>{{a}}</p></td>
  %end
  </tr>
%end
</table>

<h1 align="center">Журнал возврата оборудования</h1>
<table border="1" align="center" style="font-size: 16pt; color: #212121;">
%for row in rows:
  <tr>
  %for r in row:
    <td><p>{{r}}</p></td>
  %end
  </tr>
%end
</table>
<ul>
  <li>
    <p><a href="/new">Создать новую заявку</a></p>
  </li>
  <li>
    <select name="Редактировать заявку">
      %for row1 in rows1:
        %for r in row1:
          <option><p>{{r}}</p></option>
        %end
      %end
    </select>
  </li>
</ul>


<h1 align="center">Вторая полная таблица</h1>
<table border="1" align="center" style="font-size: 16pt; color: #212121;">
%for row2 in rows2:
  <tr>
  %for a in row2:
    <td><p>{{a}}</p></td>
  %end
  </tr>
%end
</table>
