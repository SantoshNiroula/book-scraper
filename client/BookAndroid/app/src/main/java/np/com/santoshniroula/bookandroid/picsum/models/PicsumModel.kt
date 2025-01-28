package np.com.santoshniroula.bookandroid.picsum.models

import kotlinx.serialization.Serializable
import kotlinx.serialization.json.JsonNames

@Serializable
data class PicsumModel(
    val id: String,
    val author: String,
    val url: String,
    @JsonNames("download_url") val downloadUrl: String,
)
