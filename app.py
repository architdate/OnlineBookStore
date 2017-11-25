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

##########################################################################################
#                          Table Constructors                                            #
##########################################################################################

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

class OrderTable(Table):
	classes = ['table']
	title = Col('book title')
	isbn13 = Col('ISBN13')
	orderid = Col('order id')
	order_date = Col('order date')
	order_status = Col('order status')
	order_qty = Col('quantity')

class FeedbackTable(Table):
	classes = ['table']
	login_name = Col('username')
	title = Col('book title')
	isbn13 = Col('ISBN13')
	score = Col('score')
	short_text = Col('comment')
	feedback_date = Col('date')
	avg_rating = Col('rating')

class RatingTable(Table):
	classes = ['table']
	title = Col('book title')
	isbn13 = Col('ISBN13')
	login_name = Col('customer name')
	rating = Col('rating')


class RateTable(Table):
	classes = ['table']
	title = Col('book title')
	isbn13 = Col('ISBN13')
	customer_rating = Col('customer name')
	rating = Col('rating')

class BrowseTable(Table):
	classes = ['table']
	isbn13 = Col('ISBN13')
	title = Col('title')
	authors = Col('authors')
	publisher = Col('publisher')
	year_of_publication = Col('year_of_publication')
	inventory_qty = Col('inventory_qty')
	price = Col('price')
	bookformat = Col('format')
	keywords = Col('keywords')
	subject = Col('subject')
	avgscore = Col('avgscore')

class RecTable(Table):
	classes = ['table']
	title = Col('book title')
	isbn13 = Col('ISBN13')

#Make Stat Table class

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

'''
Question 3: Added profile data
Getting data and presenting it in tables for the profile page
'''
@app.route('/getrecord/', methods=['GET'])
def getrecord():
	if not session.get('logged_in'):
		return redirect('/login')
	username = ''
	if 'login_name' in session:
		Login_name=session['login_name']
		username = Login_name
	rs = []
	qresult = db.engine.execute("select * from Customers where login_name='%s'"%username)
	for row in qresult:
		rs.append(row)
	info1 = rs[0]

	rs = []
	qresult = db.engine.execute("select b.title, o.isbn13, ob.orderid, ob.order_date, ob.order_status, o.order_qty from ordered_books ob, orders o, books b where ob.customer = '{}' and ob.orderid = o.orderid and b.isbn13 = o.isbn13;".format(username))
	for row in qresult:
		rs.append(row)
	orderlist = rs
	ordertable = OrderTable(orderlist)

	rs = []
	qresult = db.engine.execute("select t1.login_name, t1.title, t1.isbn13, t1.score, t1.short_text, t1.feedback_date, t2.avg_rating from (select fb.login_name, b.title, fb.isbn13, fb.score, fb.short_text, fb.feedback_date from Feedback fb, Books b where fb.login_name = '{}' and b.isbn13 = fb.isbn13) as t1 left outer join (select avg(rating) as avg_rating, isbn13 from rate where login_name = '{}' group by isbn13) as t2 on t1.isbn13 = t2.isbn13;".format(username, username))
	for row in qresult:
		rs.append(row)
	feedbacklist = rs
	feedbacktable = FeedbackTable(feedbacklist)

	rs = []
	qresult = db.engine.execute("select b.title, r.isbn13, r.login_name, r.rating from Books b, Rate r where (r.customer_rating = '{}' and b.isbn13 = r.isbn13);".format(username))
	for row in qresult:
		rs.append(row)
	ratelist = rs
	ratetable = RatingTable(ratelist)

	if username == 'manager':
		return render_template('userrecord.html', username=info1[0], password=info1[1], first_name=info1[2], last_name=info1[3], credit_card=info1[4], address=info1[5], phone_number=info1[6], ordertable=ordertable.__html__(), feedbacktable=feedbacktable.__html__(), ratetable=ratetable.__html__(), manager='<a class="nav-item nav-link" href="/manager">Manager</a>')
	return render_template('userrecord.html', username=info1[0], password=info1[1], first_name=info1[2], last_name=info1[3], credit_card=info1[4], address=info1[5], phone_number=info1[6], ordertable=ordertable.__html__(), feedbacktable=feedbacktable.__html__(), ratetable=ratetable.__html__(), manager='')


'''
Question 8: Added browse method to look up books
'''
@app.route('/browse/', methods=['GET'])
def browse():
	if not session.get('logged_in'):
		return redirect('/login')
	Login_name=session['login_name']
	username = Login_name
	if username == 'manager':
		return render_template('browse.html', manager='<a class="nav-item nav-link" href="/manager">Manager</a>')
	return render_template('browse.html', manager='')

@app.route('/browse/', methods=['POST'])
def browse_post():
	Login_name=session['login_name']
	username = Login_name
	manager = ''
	if username == 'manager':
		manager = '<a class="nav-item nav-link" href="/manager">Manager</a>'

	if request.form['my-form'] == 'search':
		authorForm = request.form['author']
		publisherForm = request.form['publisher']
		titleForm = request.form['title']
		subjectForm = request.form['subject']
		wherequery = " where"
		if authorForm:
			wherequery += " bo.authors = '{}' and".format(authorForm)
		if publisherForm:
			wherequery += " bo.publisher = '{}' and".format(publisherForm)
		if titleForm:
			wherequery += " bo.title = '{}' and".format(titleForm)
		if subjectForm:
			wherequery += " bo.subject = '{}'".format(subjectForm)
		if wherequery == " where":
			wherequery = ""
		if wherequery[-3:] =="and":
			wherequery = wherequery[:-3]

		optionForm = request.form['options']

		# sort by year, descending order
		if optionForm == 'year':
			sort_order = 'year_of_publication'
		# sort by score, descending order
		elif optionForm == 'score':
			sort_order = 'avgscore'

		sqlquery = "select b.isbn13, b.title, b.authors, b.publisher, b.year_of_publication, b.inventory_qty, b.price, b.format as bookformat, b.keywords, b.subject, c.avgscore from (select bo.isbn13, bo.title, bo.authors, bo.publisher, bo.year_of_publication, bo.inventory_qty, bo.price, bo.format, bo.keywords, bo.subject from Books bo{}) as b left outer join (select avg(score) as avgscore, isbn13 from feedback group by isbn13) as c on b.isbn13 = c.isbn13 order by {} desc;".format(wherequery, sort_order)

		print(sqlquery)

		booklist = []
		qresult = db.engine.execute(sqlquery)
		for row in qresult:
			booklist.append(row)

		booktable = BrowseTable(booklist)
		return render_template('bookpage.html', booktable='<h2>Browse Results</h2> <br>'+booktable.__html__(), manager=manager)

	# Question 6

	elif request.form['my-form'] == 'Feedback':
		isbn13Form = request.form['feedback_isbn13']
		scoreForm = request.form['score']
		commentForm = request.form['comment']
		date = time.strftime("%Y-%m-%d")
		login_name=session['login_name']
		try:
			db.engine.execute("insert into feedback (isbn13, login_name, score, short_text, feedback_date) values ('{}','{}','{}','{}','{}')".format(isbn13Form,login_name,scoreForm,commentForm,date))
			success = "Your feedback for this book has been recorded successfully"
		except IntegrityError:
			return render_template('bookpage.html', booktable='You have already rated this book before or you specified an invalid ISBN13', manager=manager)
		except Exception:
			return render_template('bookpage.html', booktable='Something went wrong, please try again', manager=manager)
		return render_template('bookpage.html', booktable=success, manager=manager)

	# Question 9 
    
	elif request.form['my-form'] == 'Get Top Feedback':
		isbn13Form = request.form['topfeedback_isbn13']
		limitForm = request.form['topfeedback']
		login_name=session['login_name']
		feedbackList = []
		qresult = db.engine.execute("select t1.login_name, t1.title, t1.isbn13, t1.score, t1.short_text as short_text, t1.feedback_date, t2.avg_rating from (select fb.login_name, b.title, fb.isbn13, fb.score, fb.short_text, fb.feedback_date from Feedback fb, Books b where fb.isbn13 = '{}' and b.isbn13 = fb.isbn13) as t1 left outer join (select login_name, isbn13, avg(rating) as avg_rating from Rate where isbn13 = '978-1501138003' group by login_name, isbn13) as t2 on t1.login_name = t2.login_name order by t2.avg_rating desc limit {};".format(isbn13Form, limitForm))
		for row in qresult:
			feedbackList.append(row)
		feedbacktable = FeedbackTable(feedbackList)
		return render_template('bookpage.html', booktable='<h3>Top '+limitForm+' Feedback for the book</h3> <br>'+feedbacktable.__html__(), manager=manager)

	# Question 7
    
	elif request.form['my-form'] == 'Rate':
		login_nameForm = request.form['login_name']
		isbn13Form = str(request.form['rate_isbn13'])
		rateForm = int(request.form['rating'])
		login_name=session['login_name']
		if login_nameForm == login_name:
			return render_template('bookpage.html', booktable='ERROR: You are not allowed to rate your own feedback')
		try:
			db.engine.execute("insert into rate (login_name, isbn13, customer_rating, rating) values ('{}','{}','{}','{}')".format(login_nameForm, isbn13Form, login_name, rateForm))
			success = '''Your rating for <font color = "red">''' + login_nameForm + "'s feedback for this book</font> has been recorded successfully"
		except IntegrityError:
			return render_template('bookpage.html', booktable='ERROR: You have already rated this feedback before or you specified an invalid input')
		except Exception:
			return render_template('bookpage.html', booktable='Something went wrong, please try again')
		return render_template('bookpage.html', booktable=success)

	return render_template('bookpage.html', booktable=booktable.__html__(), manager=manager)



##########################################################################################
#                       Running the application                                          #
##########################################################################################

if __name__ == '__main__':
	app.secret_key = os.urandom(12)
	app.run(debug=True, host='0.0.0.0')