import 'package:books/src/books/data/book_service.dart';
import 'package:books/src/books/models/book_model.dart';
import 'package:dio/dio.dart';

class BookRepository {
  BookRepository({BookService? service}) : _service = service ?? BookService(Dio());

  final BookService _service;

  Future<List<BookModel>> getBooks({int skip = 0}) {
    return _service.getBooks(10, skip);
  }

  Future<BookModel> getBookById(String id) {
    return _service.getBookById(id);
  }
}
