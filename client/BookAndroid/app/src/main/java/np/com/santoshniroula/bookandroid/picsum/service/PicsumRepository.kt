package np.com.santoshniroula.bookandroid.picsum.service

class PicsumRepository {
    private val service = PicsumService()

    suspend fun getImages() = service.getImages()
}