package np.com.santoshniroula.bookandroid.books

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import np.com.santoshniroula.bookandroid.books.models.BookModel
import np.com.santoshniroula.bookandroid.books.service.BookRepository

enum class BookStateStatus{
    INITIAL,
    LOADING,
    SUCCESS,
    ERROR,
}

data class BookState(
    val books: List<BookModel> = emptyList(),
    val status: BookStateStatus = BookStateStatus.INITIAL,
    val error: String? = null,
)

sealed class BookEvent{
    object LoadBooks: BookEvent()
}

class BookViewModel: ViewModel() {
    private val _repository = BookRepository()

    private val _state = MutableStateFlow<BookState>(BookState())
    val state = _state.asStateFlow()

    init {
        handleEvent(BookEvent.LoadBooks)
    }

    fun handleEvent(event: BookEvent){
        when(event){
            BookEvent.LoadBooks -> {
                viewModelScope.launch{
                    _state.value = _state.value.copy(status = BookStateStatus.LOADING)
                    try {
                        val books = _repository.getAllBooks()
                        _state.value = _state.value.copy(status = BookStateStatus.SUCCESS, books = books)
                    }catch (e: Exception) {
                        _state.value = _state.value.copy(status = BookStateStatus.ERROR, error = e.message)
                    }
                }
            }
        }
    }


}