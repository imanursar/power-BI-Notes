import psycopg2


print("Connecting into the database")
con = psycopg2.connect(database="HCD", user="postgres", password="2468264!", host="127.0.0.1", port="5432")
print("Database opened successfully")

print("Creating a Table")				  
cur = con.cursor()
cur.execute('''DROP TABLE IF EXISTS trad ;

				CREATE TABLE trad (doc json)
	  ;''')
print("Table created successfully")
con.commit()

print("Inserting the data")
cur = con.cursor()
cur.execute('''COPY trad
FROM 'E:\\gitlab\\power-bi-notes\\HCD\\trad.json'
''')

con.commit()
print("Record inserted successfully")

