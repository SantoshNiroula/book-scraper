package np.com.santoshniroula.bookandroid.picsum

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import coil3.compose.AsyncImage

@Composable
fun PicsumView(
    modifier: Modifier = Modifier
) {
    val picsumViewModel: PicsumViewModel = viewModel()
    val state = picsumViewModel.state.collectAsState().value

    Box(
        modifier = modifier.padding(horizontal = 16.dp),
    ) {
        when (state.status) {
            PicsumStateStatus.INITIAL -> CircularProgressIndicator()
            PicsumStateStatus.LOADING -> CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
            PicsumStateStatus.ERROR -> Text(state.error ?: "Unknown error")
            PicsumStateStatus.SUCCESS -> {
                LazyColumn {
                    items(state.images) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                        ) {
                            AsyncImage(
                                model = it.downloadUrl,
                                contentDescription = "Translated description of what the image contains"
                            )
                            Text(it.author)
                        }
                    }
                }
            }
        }
    }
}