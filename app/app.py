from typing import List, Dict
from flask import Flask, redirect, url_for, request, render_template
import mysql.connector
import json

app = Flask(__name__)


def test_table() -> List[Dict]:
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'devopsroles'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM test_table')
    results = [{name: color} for (name, color) in cursor]
    cursor.close()
    connection.close()

    return results


@app.route('/')
#def home():
#    return render_template('index.html')
def index() -> str:
    return json.dumps({'ttable': test_table()})

@app.route('/home')
def home():
    return render_template('home.html')

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
    app.run(host='0.0.0.0', debug=True)
