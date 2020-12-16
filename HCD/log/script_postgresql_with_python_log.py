import psycopg2


print("Connecting into the database")
con = psycopg2.connect(database="HCD", user="postgres", password="2468264!", host="127.0.0.1", port="5432")
print("Database opened successfully")

print("Creating a Table")				  
cur = con.cursor()
cur.execute('''DROP TABLE IF EXISTS impala_wf_2GB ;

				CREATE TABLE impala_wf_2GB (
				file_name varchar(100),
				size varchar(50),
				time_in timestamp ,
				time_out timestamp,
				diff varchar(100),
				row bigint
				)
	  ;''')
print("Table created successfully")
con.commit()

print("Inserting the data")
cur = con.cursor()
cur.execute('''COPY impala_wf_2GB
FROM 'E:\\gitlab\\power-bi-notes\\HCD\\log\\impala_wf_2GB_20200923215621bangke.log'
DELIMITER '|'
''')

con.commit()
print("Record inserted successfully")

