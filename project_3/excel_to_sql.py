import pandas as pd
import sqlite3

df = pd.read_excel("data/Decode_labs_dataset.xlsx")

conn = sqlite3.connect("ecommerce.db")

df.to_sql("orders", conn, if_exists="replace", index=False)

print("Database Created Successfully!")

conn.close()