package np.com.santoshniroula.bookandroid

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Person
import androidx.compose.material3.Icon
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import np.com.santoshniroula.bookandroid.books.BookListView
import np.com.santoshniroula.bookandroid.picsum.PicsumView
import np.com.santoshniroula.bookandroid.ui.theme.BookAndroidTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            val currentIndex = remember { mutableIntStateOf(0) }

            BookAndroidTheme {
                Scaffold(
                    modifier = Modifier.fillMaxSize(),
                    bottomBar = {
                        BottomNavItems(
                            currentIndex = currentIndex.intValue,
                            onTap = { currentIndex.intValue = it}
                        )
                    }
                ) { innerPadding ->
                    val modifier = Modifier.padding(innerPadding)
                    if(currentIndex.intValue == 0){
                        BookListView(modifier = modifier)
                    }else{
                        PicsumView(modifier = modifier)
                    }
                }
            }
        }
    }
}

@Composable
fun BottomNavItems(
    currentIndex: Int = 0,
    onTap : (Int) -> Unit = {}
) {



    NavigationBar {
        NavigationBarItem(
            selected = currentIndex == 0,
            label = { Text("Books") },
            icon = { Icon(Icons.Default.Home, contentDescription = null) },
            onClick = { onTap(0)})
        NavigationBarItem(
            selected = currentIndex == 1,
            label = { Text("Picksum") },
            icon = { Icon(Icons.Default.Person, contentDescription = null) },
            onClick = { onTap(1) })
    }

    }
