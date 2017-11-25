from flask import Flask, render_template, request, session, flash, abort, redirect, url_for
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import desc
from sqlalchemy.sql import func
from sqlalchemy.exc import IntegrityError
from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine, text
from flask_table import Table, Col 
import os
import decimal
import time

engine = create_engine('mysql+mysqlconnector://root:password@localhost:3306/bookstore', echo=True)

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:password@localhost:3306/bookstore'

db = SQLAlchemy(app)

class customers(db.Model):
	login_name = db.Column(db.String(20), primary_key = True)
	password = db.Column(db.String(20))
	first_name = db.Column(db.String(20))
	last_name = db.Column(db.String(20))
	credit_card = db.Column(db.String(20))
	address = db.Column(db.String(50))
	phone_number = db.Column(db.String(20))

	def __init__(self, login_name, password, first_name, last_name, credit_card, address, phone_number):
		self.login_name = login_name
		self.password = password
		self.first_name = first_name
		self.last_name = last_name
		self.credit_card = credit_card
		self.address = address
		self.phone_number = phone_number

#Make remaining classes

#Make table classes

##########################################################################################
#                       Flask App Routes                                                 #
##########################################################################################

'''
Question 1: Login statements
User can login
Add admin login (implement book registration with manager later)
'''

@app.route('/')
def index():
	if not session.get('logged_in'):
		return redirect('login')
	else:
		username = session['login_name']
		if username != 'manager':
			return render_template('index.html')
		return render_template('indexm.html')

@app.route('/registration/', methods=['GET'])
def registration():
	return render_template('registration.html', regerror='')

@app.route('/registration/', methods=['POST'])
def registration_post():
	if request.form['my-form'] == 'register':
		first_name = request.form['first_name'].strip()
		last_name = request.form['last_name'].strip()
		login_name = request.form['username'].strip()
		password = request.form['password'].strip()
		address = request.form['address'].strip()
		credit_card = request.form['ccno'].strip()
		phone_number = request.form['phone'].strip()
		newcustomer = customers(login_name, password, first_name, last_name, credit_card, address, phone_number)
		try:
			db.session.add(newcustomer)
			db.session.commit()
			session['logged_in'] = True
			session['login_name'] = login_name
			return redirect('/')
		except IntegrityError:
			return render_template('registration.html', regerror='Error: Duplicate username found, please try another username.')
	elif request.form['my-form'] == 'back':
		return redirect('/')


@app.route('/login/', methods=['GET'])
def login():
	return render_template('login.html', loginerror='')

@app.route('/login/', methods=['POST'])
def do_admin_login():
	POST_USERNAME = str(request.form['login_name'].strip())
	POST_PASSWORD = str(request.form['password'].strip())

	Session = sessionmaker(bind=engine)
	s = Session()
	query = s.query(customers).filter(customers.login_name.in_([POST_USERNAME]), customers.password.in_([POST_PASSWORD]) )
	result = query.first()
	if result:
		flash("successfully logged in")
		session['logged_in'] = True
		session['login_name'] = POST_USERNAME
	else:
		return render_template('login.html', loginerror='''<font color = "white">Error: Wrong username or password.</font>''')
	return redirect('/')

@app.route('/logout')
def logout():
	session['logged_in'] = False
	session['login_name'] = None
	return redirect("/")


##########################################################################################
#                       Running the application                                          #
##########################################################################################

if __name__ == '__main__':
	app.secret_key = os.urandom(12)
	app.run(debug=True, host='0.0.0.0')