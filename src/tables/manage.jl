using SQLite

db = SQLite.DB("src/tables/FinDB.db")

SQLite.execute(db, "CREATE TABLE IF NOT EXISTS TimeSeriesData
    (id INTEGER PRIMARY KEY, date TEXT, field TEXT, value REAL, source TEXT)
")

SQLite.execute(db, "CREATE TABLE IF NOT EXISTS StaticData
    (id INTEGER PRIMARY KEY, field TEXT, value REAL, source TEXT, insertdate TEXT)
")

SQLite.execute(db, "DELETE FROM TimeSeriesData")
SQLite.execute(db, "DELETE FROM TimeSeriesData")