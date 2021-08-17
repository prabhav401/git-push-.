import 'package:flutter/material.dart';

class AddNewMovie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Add New Movie"),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Positioned.fill(child: Image(
              image: AssetImage('assets/addmovie.jpg'),
              fit: BoxFit.fill,
            )),
            new Container(
              margin: EdgeInsets.fromLTRB(15, 200, 15, 220),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget> [
                    SizedBox(height: 10),
                    TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                        icon: Icon(Icons.movie_creation_outlined),
                        hintText: "Add Movie Name here",
                        labelText: "Movie Name :",
                      ),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                        border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                        icon: Icon(Icons.video_camera_back_outlined),
                        hintText: "Add Director Name here",
                        labelText: "Director Name :",
                      ),
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                        border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                        icon: Icon(Icons.link_outlined),
                        hintText: "Paste Poster URL Name here",
                        labelText: "URL :",
                      ),
                    ),
                    SizedBox(height:40),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      // ignore: unnecessary_statements
                      onPressed: () { },
                      color: Colors.greenAccent,
                      child: Text("Add Movie"),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}






  