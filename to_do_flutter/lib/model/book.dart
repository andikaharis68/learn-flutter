class Book {
  int? id;
  String tittle;
  String publisher;

  Book({this.id, required this.tittle, required this.publisher});

  Book.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        tittle = map['tittle'],
        publisher = map['publisher'];
}
