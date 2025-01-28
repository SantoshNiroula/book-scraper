package np.com.santoshniroula.bookandroid.books.models

import kotlinx.serialization.Serializable

@Serializable
data class BookModel(
    val id: String,
    val price: String,
    val title: String,
    val image: String,
)
