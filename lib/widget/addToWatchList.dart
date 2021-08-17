import 'package:flutter/material.dart';
import 'package:google_signin_example/page/moviesListScreen.dart';

// ignore: must_be_immutable
class BuyButtonWidget extends StatelessWidget {
  var buttonText = 'ADD TO WATCHLIST';
  @override
  Widget build(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
            Container(
              width: 150,
              height: 40,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => WatchList()
                        ));
                },
                color: Colors.black54,
                child: Text(
                  'GO TO WATCHLIST',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
      ],
    );

  void setState(Null Function() param0) {}
}