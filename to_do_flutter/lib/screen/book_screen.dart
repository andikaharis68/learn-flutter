import 'package:flutter/material.dart';
import 'package:to_do_flutter/model/book.dart';
import 'package:to_do_flutter/repository/book_repository.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  BookRepository _bookRepository = BookRepository();

  @override
  Widget build(BuildContext context) {
    _bookRepository.addBook(Book(tittle: 'pauline', publisher: 'gramedia'));
    return Container();
  }
}
