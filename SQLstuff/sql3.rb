require 'sqlite3'
require 'pry'

varname = SQLite3::Database.new "swimmeet.db"

varname.execute("CREATE TABLE ATHLETES (rowid INTEGER PRIMARY KEY, athleteid INTEGER, COLLEGE TEXT, CONF TEXT, ADDRESS TEXT, NAME TEXT);")








CREATE TABLE STUFF (COL1 TEXT, COL2 TEXT);
INSERT INTO STUFF (COL1, COL2) VALUES ('c', 'd'), ('e', 'f'), ('g', 'h');