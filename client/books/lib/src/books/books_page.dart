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
          BookStateStatus.loaded =>
            BookListingWidget(books: state.books, onFetchMore: () => context.read<BookBloc>().add(FetchMoreBookEvent())),
        };
      },
    );
  }
}

class BookListingWidget extends StatefulWidget {
  const BookListingWidget({super.key, this.books, this.onFetchMore});
  final List<BookModel>? books;
  final VoidCallback? onFetchMore;

  @override
  State<BookListingWidget> createState() => _BookListingWidgetState();
}

class _BookListingWidgetState extends State<BookListingWidget> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
          widget.onFetchMore?.call();
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _scrollController,
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      itemBuilder: (context, index) => BookItem(book: widget.books![index]),
      itemCount: widget.books?.length ?? 0,
    );
  }
}

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CachedNetworkImage(imageUrl: book.image ?? ''),
            Text(
              book.title ?? '',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(book.price ?? ''),
          ],
        ),
      ),
    );
  }
}
