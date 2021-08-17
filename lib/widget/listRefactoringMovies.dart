import 'package:flutter/material.dart';
import 'package:google_signin_example/Models/movie.dart';

class ShoppingItemWidget extends StatelessWidget {
  final Movie item;
  final Animation animation;
  final VoidCallback onClicked;

  const ShoppingItemWidget({
    @required this.item,
    @required this.animation,
    @required this.onClicked,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ScaleTransition(
        scale: animation,
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            leading: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(item.imageUrl),
            ),
            title: Text(item.movieName, style: TextStyle(fontSize: 20)),
            subtitle: Text(item.director),
            trailing: IconButton(
              icon: Icon(Icons.delete_forever, color: Colors.redAccent, size: 32),
              onPressed: onClicked,
            ),
          ),
        ),
      );
}