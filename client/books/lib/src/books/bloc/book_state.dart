part of 'book_bloc.dart';

enum BookStateStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class BookState with _$BookState {
  const factory BookState({
    required BookStateStatus status,
    List<BookModel>? books,
    String? errorMessage,
  }) = _BookState;
}
