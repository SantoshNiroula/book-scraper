part of 'book_bloc.dart';

@immutable
sealed class BookEvent {}

final class FetchBookEvent extends BookEvent {}
