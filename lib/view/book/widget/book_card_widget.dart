import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../model/book_model.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key key, this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            book.img,
            height: context.height / 4,
          ),
          Text(
            book.title,
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          Text(
            '${book.point.toString()} Puan',
            style: TextStyle(color: Colors.black, fontSize: 24),
          )
        ],
      ),
    );
  }
}
