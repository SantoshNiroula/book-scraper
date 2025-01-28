import 'package:books/src/books/data/book_repository.dart';
import 'package:books/src/books/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_event.dart';
part 'book_state.dart';
part 'book_bloc.freezed.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc({BookRepository? repository})
      : _repository = repository ?? BookRepository(),
        super(BookState(status: BookStateStatus.initial)) {
    on<FetchBookEvent>(_onFetch);
  }

  final BookRepository _repository;

  Future<void> _onFetch(FetchBookEvent event, Emitter<BookState> emit) async {
    emit(state.copyWith(status: BookStateStatus.loading));
    try {
      final books = await _repository.getBooks();
      emit(state.copyWith(status: BookStateStatus.loaded, books: books));
    } catch (e) {
      emit(state.copyWith(status: BookStateStatus.error, errorMessage: e.toString()));
    }
  }
}
