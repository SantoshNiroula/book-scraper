package np.com.santoshniroula.bookandroid.books.service

class BookRepository {
    val service = BookService()

    suspend fun getAllBooks() = service.getBooks()

    suspend fun getBookById(id: String) = service.getBook(id)
}