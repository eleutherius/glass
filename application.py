import sqlite3
from bottle import route, run, debug, template, request, error, static_file, get, post, Bottle

app = Bottle()
@app.route('/sss')
def hello():
    return "<p>hello</p>"


@route('/admin')
def journal_list():
    conn = sqlite3.connect('journal.sql')
    c = conn.cursor()
    c.execute("SELECT id, task FROM todo WHERE status LIKE '1'")
    result = c.fetchall()
    c.close()
    # add select item
    b = conn.cursor()
    b.execute("SELECT id FROM todo")
    result1 = b.fetchall()
    b.close()

    d = conn.cursor()
    d.execute("SELECT id, task, status FROM todo")
    result2 = d.fetchall()
    d.close()

    f = conn.cursor()
    f.execute("SELECT id, date_in, name, sn, ttn_out, sn FROM journal")
    result3 = f.fetchall()
    f.close()

    output = template('template/admin.tpl', rows=result, rows1=result1, rows2=result2, rows3=result3)
    return output

@route('/')
@route('/login')
def login():
    return template('template/login.tpl')

@route('/table')
def table():
    conn = sqlite3.connect('journal.sql')
    f = conn.cursor()
    f.execute("SELECT id, date_in, name, ttn_in, sours_address, equipment, sn, mac, reason, recd, diagnosis, decision, date_out, ttn_out, dest_address, num_1c, state FROM journal")
    result4 = f.fetchall()
    f.close()

    output1 = template('template/table.tpl', rows4=result4)
    return output1


# Создание новых строк
@get('/new')
def new_item():
    return template('template/new_task.tpl')

@post('/new')
def do_new_item():

    if request.POST.get('save','').strip():

        #Тут делаем непонятніе вещи с переданным значением формы
        #оставить так как есть, пока не трогать!
        #new = request.POST.get('task', '').strip()
        new = request.POST.getunicode('task', '')

        conn = sqlite3.connect('journal.sql')
        c = conn.cursor()

        query = "INSERT INTO todo (task,status) VALUES ('%s',1)" %new
        c.execute(query)
        conn.commit()

        c.execute("SELECT last_insert_rowid()")
        new_id = c.fetchone()[0]
        c.close

        return template('template/task_added.tpl', new_id=new_id)
    else:
        return "<p>POST failed.</p>"

@get('/edit')
def new_item():
    return template('template/edit_table.tpl')


@get('/form')
def new_item():
    return template('template/form.tpl')
@post('/form')
def new_row():

    if request.POST.get('save','').strip():

        date_in = request.forms.getunicode('date_in')
        name = request.forms.getunicode('name')
        ttn_in  = request.forms.getunicode('ttn_in')
        sours_address = request.forms.getunicode('sours_address')
        equipment = request.forms.getunicode('equipment')
        sn = request.forms.getunicode('sn')
        mac = request.forms.getunicode('mac')
        reason = request.forms.getunicode('reason')
        recd = request.forms.getunicode('recd')
        diagnosis = request.forms.getunicode('diagnosis')
        decision = request.forms.getunicode('decision')
        date_out = request.forms.getunicode('date_out')
        ttn_out = request.forms.getunicode('ttn_out')
        dest_address = request.forms.getunicode('dest_address')
        num_1c = request.forms.getunicode('num_1c')
        state = request.forms.getunicode('state')

        conn = sqlite3.connect('journal.sql')
        c = conn.cursor()

        query = "INSERT INTO journal (date_in, name, ttn_in, sours_address, equipment, sn, mac, reason, recd, diagnosis, decision, date_out, ttn_out, dest_address, num_1c, state) VALUES (\'{0}\',\'{1}\',\'{2}\',\'{3}\',\'{4}\',\'{5}\',\'{6}\',\'{7}\',\'{8}\',\'{9}\',\'{10}\',\'{11}\',\'{12}\',\'{13}\',\'{14}\',\'{15}\')".format(date_in, name, ttn_in, sours_address, equipment, sn, mac, reason, recd, diagnosis, decision, date_out, ttn_out, dest_address, num_1c, state)

        c.execute(query)
        conn.commit()

        c.execute("SELECT last_insert_rowid()")
        new_id = c.fetchone()[0]
        c.close()

        return template('template/row_added.tpl', new_id=new_id)
    else:

        return "<p>POST failed.</p>"

"""
@route('/edit/:no', method='GET')
def edit_item(no):

    if request.GET.get('save','').strip():
        edit = request.GET.get('task','').strip()
        status = request.GET.get('status','').strip()

        if status == 'open':
            status = 1
        else:
            status = 0

        conn = sqlite3.connect('journal.sql')
        c = conn.cursor()
        query = "UPDATE todo SET task = '%s', status = '%s' WHERE id LIKE '%s'" % (edit,status,no)
        c.execute(query)
        conn.commit()

        return '<p>The item number %s was successfully updated</p>' %no

    else:
        conn = sqlite3.connect('journal.sql')
        c = conn.cursor()
        query = "SELECT task FROM todo WHERE id LIKE '%s'" %no
        c.execute(query)
        cur_data = c.fetchone()
        print  (cur_data)

        return template('template/edit_task.tpl', old = cur_data, no = no)
"""
#@get('/edit/:no')
#def new_item():
#    return template('template/form.tpl')
@get ('/edit/:no')
def edit_item(no):

    if request.GET.get('save','').strip():
        edit = request.GET.get('task','').strip()
        status = request.GET.get('status','').strip()

        if status == 'open':
            status = 1
        else:
            status = 0

        conn = sqlite3.connect('journal.sql')
        c = conn.cursor()
        query = "UPDATE todo SET task = '%s', status = '%s' WHERE id LIKE '%s'" % (edit,status,no)
        c.execute(query)
        conn.commit()

        return '<p>The item number %s was successfully updated</p>' %no

    else:
        conn = sqlite3.connect('journal.sql')
        c = conn.cursor()
        query = "SELECT date_in, name, ttn_in, sours_address, equipment, sn, mac, reason, recd, diagnosis, decision, date_out, ttn_out, dest_address, num_1c, state FROM journal WHERE id LIKE '%s'" %no
        c.execute(query)
        cur_data = c.fetchone()
        print  (cur_data)

        return template('template/edit_table.tpl', old = cur_data, no = no)

#Добавляем CSS стили
@get('/css/<filename:re:.*\.css>')
def stylesheets(filename):
    return static_file(filename, root='./css')
#Добавляем картинки
@route('/img/<filepath:path>')
def server_static(filepath):
        return static_file(filepath, root='./img')
@route('/vendor/<filepath:path>')
def server_static(filepath):
        return static_file(filepath, root='./vendor')
@route('/js/<filepath:path>')
def server_static(filepath):
        return static_file(filepath, root='./js')
@route('/data/<filepath:path>')
def server_static(filepath):
        return static_file(filepath, root='./data')
@route('/dist/<filepath:path>')
def server_static(filepath):
        return static_file(filepath, root='./dist')


@error(403)
def mistake403(code):
    return 'There is a mistake in your url!'

@error(404)
def mistake404(code):
    return 'Sorry, this page does not exist!'

if __name__=='__main__':
    run(host='localhost', port=8080, debug=True, reloader=True)
