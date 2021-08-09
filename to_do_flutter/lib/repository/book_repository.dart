import 'package:to_do_flutter/dao/book_dao.dart';
import 'package:to_do_flutter/db/DB_helper.dart';
import 'package:to_do_flutter/model/book.dart';

class BookRepository {
  final DBHelper _dbHelper = DBHelper.INSTANCE;

  addBook(Book book) async {
    _dbHelper.insert(BookDAO.TABLE_NAME,
        {'tittle': book.tittle, 'publisher': book.publisher});
  }
}
