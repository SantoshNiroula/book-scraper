package np.com.santoshniroula.bookandroid.books.service

import np.com.santoshniroula.bookandroid.core.service.ApiService
import np.com.santoshniroula.bookandroid.books.models.BookModel

class BookService {
    val client = ApiService()

    suspend fun getBooks() = client.get<List<BookModel>>("$URL_PREFIX/books")

    suspend fun getBook(id: String) = client.get<BookModel>("$URL_PREFIX/books/$id")

    companion object {
        private const val URL_PREFIX = "http://192.168.72.45:8000"
    }
}