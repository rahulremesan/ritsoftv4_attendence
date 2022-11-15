from typing import List, Dict
from flask import Flask, redirect, url_for, request, render_template
import mysql.connector
import json

app = Flask(__name__)


config = {
    'user' : 'ritsoftv4-user' ,
    'password' : 'ritsoftv4-pass' ,
    'host' : '117.232.108.35' ,
    'port' : '8100' ,
    'database' : 'ritsoftv4'
}

connection = mysql.connector.connect(**config)
c1 = connection.cursor()
c2 = connection.cursor()



@app.route('/')
def home():
    return render_template('home.html')

@app.route('/attendance')
def attendance():
    # id=session['login_id']
    c1.execute ('SELECT * FROM mrd_course')
    s =  c1.fetchall()
    c2.execute('SELECT * FROM mrd_courseplan')
    batch =  c2.fetchall()
    return render_template('att_fact.html',s=s,batch=batch)

@app.route('/att_status_stud')
def att_status_stud():
    return render_template('att_status_stud.html')

@app.route('/success/<name>')
def success(name):
    return 'welcome <h1>%s</h1>' % name


@app.route('/failure')
def failure():
    return '<h1>Failure!!</h1>'

@app.route('/login', methods=['POST', 'GET'])
def login():
    if request.method == 'POST':
        user = request.form['uname']
        return redirect(url_for('success', name=user))
    else:
        return redirect(url_for('failure'))



if __name__ == '__main__':
    app.run(host='0.0.0.0', port='8100', debug=True)
