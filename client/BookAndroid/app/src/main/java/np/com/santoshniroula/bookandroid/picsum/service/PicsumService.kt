package np.com.santoshniroula.bookandroid.picsum.service

import np.com.santoshniroula.bookandroid.core.service.ApiService
import np.com.santoshniroula.bookandroid.picsum.models.PicsumModel

class PicsumService {
    private val client = ApiService()

    suspend fun getImages() = client.get<List<PicsumModel>>("$URL_PREFIX/v2/list")

    companion object {
        private const val URL_PREFIX = "https://picsum.photos"
    }

}