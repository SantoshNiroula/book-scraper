import 'dart:developer';

import 'package:books/src/books/data/book_repository.dart';
import 'package:books/src/books/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_event.dart';
part 'book_state.dart';
part 'book_bloc.freezed.dart';

const int limit = 20;

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc({BookRepository? repository})
      : _repository = repository ?? BookRepository(),
        super(BookState(status: BookStateStatus.initial)) {
    on<FetchBookEvent>(_onFetch);
    on<FetchMoreBookEvent>(_onFetchMore);
  }

  final BookRepository _repository;
  int _currentPage = 1;

  Future<void> _onFetch(FetchBookEvent event, Emitter<BookState> emit) async {
    emit(state.copyWith(status: BookStateStatus.loading));
    try {
      final books = await _repository.getBooks(limit: 20);
      emit(state.copyWith(status: BookStateStatus.loaded, books: books));
    } catch (e) {
      emit(state.copyWith(status: BookStateStatus.error, errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchMore(FetchMoreBookEvent event, Emitter<BookState> emit) async {
    try {
      final books = await _repository.getBooks(skip: _currentPage * limit, limit: 20);
      emit(state.copyWith(books: [...state.books ?? [], ...books]));
      _currentPage++;
    } catch (e) {
      log(e.toString());
    }
  }
}
