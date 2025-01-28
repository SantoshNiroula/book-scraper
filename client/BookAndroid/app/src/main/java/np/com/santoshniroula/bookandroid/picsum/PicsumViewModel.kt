package np.com.santoshniroula.bookandroid.picsum

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import np.com.santoshniroula.bookandroid.picsum.models.PicsumModel
import np.com.santoshniroula.bookandroid.picsum.service.PicsumRepository

enum class PicsumStateStatus {
    INITIAL,
    LOADING,
    SUCCESS,
    ERROR,
}

data class PicsumState(
    val images: List<PicsumModel> = emptyList(),
    val status: PicsumStateStatus = PicsumStateStatus.INITIAL,
    val error: String? = null,
)

sealed class PicsumEvent {
    object LoadImages: PicsumEvent()
}

class PicsumViewModel: ViewModel(){
    private val repository = PicsumRepository()

    private val _state = MutableStateFlow<PicsumState>(PicsumState())
    val state = _state.asStateFlow()

    init {
        handleEvent(PicsumEvent.LoadImages)
    }

    fun handleEvent(event: PicsumEvent) {
        when(event){
            PicsumEvent.LoadImages -> {
                viewModelScope.launch {
                   _state.value = _state.value.copy(status = PicsumStateStatus.LOADING)
                  try {
                      val images = repository.getImages()
                      _state.value = _state.value.copy(status = PicsumStateStatus.SUCCESS, images = images)
                  } catch (e: Exception){
                      _state.value = _state.value.copy(status = PicsumStateStatus.ERROR, error = e.message)
                  }
                }
            }
        }
    }
}