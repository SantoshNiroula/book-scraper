from bson import ObjectId
from fastapi import FastAPI
import pymongo

client = pymongo.MongoClient("mongodb://root:example@localhost:27017/")
db = client["books_db"]
collection = db["books"]


app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/books")
def read_books(
	limit: int = 10,
	skip: int = 0
):
    books = list(collection.find().skip(skip).limit(limit))
    total = collection.count_documents({})
    for book in books:
        book["id"] = str(book["_id"])
        del book["_id"]
    return {
        "total" : total,
        "limit" : limit,
        "skip" : skip,
        "books" : books
    }

@app.get("/books/{book_id}")
def read_book(book_id: str):
    book = collection.find_one({"_id": ObjectId(book_id)})
    book["id"] = str(book["_id"])
    del book["_id"]
    return book