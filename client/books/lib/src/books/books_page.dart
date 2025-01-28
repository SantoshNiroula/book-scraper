import 'package:books/src/books/bloc/book_bloc.dart';
import 'package:books/src/books/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookBloc()..add(FetchBookEvent()),
      child: const BooksView(),
    );
  }
}

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(
      builder: (context, state) {
        return switch (state.status) {
          BookStateStatus.initial || BookStateStatus.loading => Center(
              child: CircularProgressIndicator(),
            ),
          BookStateStatus.error => Center(
              child: Text(state.errorMessage ?? ''),
            ),
          BookStateStatus.loaded => GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemBuilder: (context, index) => BookItem(book: state.books![index]),
              itemCount: state.books?.length ?? 0,
            ),
        };
      },
    );
  }
}

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CachedNetworkImage(imageUrl: book.image ?? ''),
          Text(book.title ?? ''),
          Text(book.price ?? ''),
        ],
      ),
    );
  }
}
