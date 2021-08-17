import 'package:flutter/material.dart';
import 'package:google_signin_example/Models/movie.dart';
import 'package:google_signin_example/provider/addedMoviesData.dart';
import 'package:google_signin_example/widget/listRefactoringMovies.dart';

import 'addNewMovie.dart';

class WatchList extends StatelessWidget {
  final String title = 'Watch-List';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.orangeAccent,
        ),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final key = GlobalKey<AnimatedListState>();
  final items = List.from(Data.addedMovies);
  // Future<List<Task>> _taskList;

  // @override
  // void initState() {
  //   super.initState();
  //   _updateTaskList();
  // }

  // _updateTaskList() {
  //   setState(() {
  //     _taskList = DatabaseHelper.instance.getMoviesList();
  //   });
  // }

  Widget build(BuildContext context) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/JustOneMoreEpisode.jpg'), 
            ),
          ),
    child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text(widget.title),
            centerTitle: true,
            elevation: 0,
          ),
            backgroundColor: Colors.orangeAccent,
            body: Column(
              children: [
                Expanded(
                  child: AnimatedList(
                    key: key,
                    initialItemCount: items.length,
                    itemBuilder: (context, index, animation) =>
                        buildItem(items[index], index, animation),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildInsertButton(),
                      SizedBox(width: 12),
                      buildAddNewMovieButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
      );

  Widget buildItem(item, int index, Animation<double> animation) =>
      ShoppingItemWidget(
        item: item,
        animation: animation,
        onClicked: () => removeItem(index),
      );

  // ignore: deprecated_member_use
  Widget buildInsertButton() => RaisedButton(
        child: Text(
          'INSERT ITEM',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.black54,
        onPressed: () => insertItem(3, Data.addedMovies.first),
      );

  void insertItem(int index, Movie item) {
    items.insert(index, item);
    key.currentState.insertItem(index);
  }

  void removeItem(int index) {
    final item = items.removeAt(index);

    key.currentState.removeItem(
      index,
      (context, animation) => buildItem(item, index, animation),
    );
  }

  // ignore: deprecated_member_use
  Widget buildAddNewMovieButton() => RaisedButton(
        child: Text(
          'ADD NEW MOVIE',
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.black54,
        onPressed: () => 
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) => AddNewMovie()
          )),
      );
}