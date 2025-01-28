import 'package:books/src/books/models/book_model.dart';
import 'package:books/src/books/models/paginated_book_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'book_service.g.dart';

@RestApi(baseUrl: "http://localhost:8000")
abstract class BookService {
  factory BookService(Dio dio, {String baseUrl}) = _BookService;

  @GET('/books')
  Future<PaginatedBookModel> getBooks(
    @Query('limit') int limit,
    @Query('skip') int skip,
  );

  @GET('/books/{id}')
  Future<BookModel> getBookById(@Path('id') String id);
}
