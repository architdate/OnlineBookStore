# OnlineBookStore
Bookstore App for Database Mod 50.008
## Contributors
Amish Bhandari *1001614*
Archit Date *1001695*
Sidney Suen *1001525*
Arshi Dalvi *1001768*
Nickson Guay *1000998*

# Installation
To pull the repository, run the following command

```
git clone git@github.com:architdate/OnlineBookStore.git
```

# Adding the Database
Open terminal and start your MySQL Server on it. Login to your database
Run the following commands:
```
mysql> source Schema.sql
```
```
mysql> source seed.sql
```
# Running the flask based server backend

The repository runs on a virtual environment.
Make sure to name the virtual environment as `envx` so that the virtual environment files get gitignored

To create a virtual environment, make sure your base python is version 3
Then run the following command inside your project folder

```
virtualenv envx
```

Now, `cd` to `./envx/Scripts` and type
```
activate
```
to start the virtual environment in your terminal

`cd` back to the main project folder and run the following command:

```
pip install -r requirements.txt
```

This installs flask dependancies and sqlalchemy used for the backend.
Then to run the app run this command

```
python app.py
```
Note: Make sure you update your own database credentials in the `app.py` file.

# Comments for Grader
- We used git for collaboration. Once we had a functional app on master, any further work was done on branches.
- We used and then modified the basic Bootstrap framework for our styling
- We also used standard libraries to obtain data from and to push the data to the frontend HTML pages
- To find our sql executions, look for the `db.engine.execute()` function calls in our code. Each requirement from *project.pdf* is indicated in *app.py* with docstrings with `Question X`


# Disclaimer

This code uses entirely raw SQL statements to make calls to GET and POST from the database schema.
This is not good industry practice. This is not our own design choice, but a design requirement as specified by the course for this project.
Under normal cirumstances we do not recommend the use of raw SQL over sqlalchemys ORM