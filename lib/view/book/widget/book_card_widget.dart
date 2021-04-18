import 'package:flutter/material.dart';
import 'package:pookie_bookie/view/book/model/book_model.dart';

class BookCard extends StatelessWidget {
  const BookCard({Key key, this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      child: Center(
        child: Column(
          children: [
            Icon(
              book.img,
              size: 80.0,
              color: Colors.black,
            ),
            Text(
              book.title,
              style: TextStyle(color: Colors.black, fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
