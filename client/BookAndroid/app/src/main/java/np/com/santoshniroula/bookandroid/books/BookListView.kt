package np.com.santoshniroula.bookandroid.books

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import coil3.compose.AsyncImage

@Composable
fun BookListView(
    modifier: Modifier = Modifier,
){
    val bookViewModel: BookViewModel = viewModel()
    val state = bookViewModel.state.collectAsState().value

    Box (
        modifier = modifier.padding(horizontal = 16.dp)
    ){
        when(state.status){
            BookStateStatus.INITIAL -> CircularProgressIndicator()
            BookStateStatus.LOADING -> CircularProgressIndicator()
            BookStateStatus.ERROR -> Text(state.error ?: "Unknown error")
            BookStateStatus.SUCCESS -> {
                LazyColumn {
                    items(state.books){book ->
                        Column {
                            AsyncImage(
                                model = book.image,
                                contentDescription = "This is content descriptions",
                                modifier = Modifier.padding(8.dp)
                            )
                            Text(book.title)
                            Text(book.price)
                        }
                    }
                }
            }
        }
    }
}