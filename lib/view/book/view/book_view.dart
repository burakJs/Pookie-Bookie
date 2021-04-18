import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/base/view/base_widget.dart';
import 'package:pookie_bookie/view/book/viewmodel/book_view_model.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title="";

    return BaseView<BookViewModel>(
      viewModel: BookViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, BookViewModel value) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search, color: Colors.black,),
              hintText: "Search book here"
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount:2,
          children:List.generate(books.length, (index){
            return BookCard(book: books[index],);
          })
        ),
      ),
    );
  }
}
class Book{
  const Book({this.title, this.img});

  final String title;
  final IconData img;
}



const List books = const[
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "yyyyyyyy",img: Icons.android),
  const Book(title: "zzzzzzzz",img: Icons.android),
  const Book(title: "aaaaaaaa",img: Icons.android),
  const Book(title: "bbbbbbbbb",img: Icons.android),
  const Book(title: "eeeeeeee",img: Icons.android),
  const Book(title: "ggggggg",img: Icons.android),
  const Book(title: "ddddddddd",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
  const Book(title: "xxxxxxxx",img: Icons.android),
];

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
            Icon(book.img, size: 80.0, color: Colors.black,),
            Text(book.title, style: TextStyle(color: Colors.black, fontSize: 35),)
          ],
          ),
      ),
    );
  }
}