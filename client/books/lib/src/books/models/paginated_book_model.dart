import 'package:books/src/books/models/book_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_book_model.freezed.dart';
part 'paginated_book_model.g.dart';

@freezed
class PaginatedBookModel with _$PaginatedBookModel {
  const factory PaginatedBookModel({
    required int limit,
    required int skip,
    required int total,
    required List<BookModel> books,
  }) = _PaginatedBookModel;

  factory PaginatedBookModel.fromJson(Map<String, dynamic> json) => _$PaginatedBookModelFromJson(json);
}
