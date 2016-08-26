# Connect to an SQLite file
m <- dbDriver("SQLite", max.con = 25)
con <- dbConnect(m, dbname="myDataBase.sqlite")
p <- dbGetQuery(con,'select * from people')