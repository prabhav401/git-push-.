import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_signin_example/page/homePageMovies.dart';
import 'package:google_signin_example/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Container(
      decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/JustOneMoreEpisode.jpg'),
              fit: BoxFit.cover,
            ),
          ),
      alignment: Alignment.center,
      child: Card(
        elevation: 50.0,
        color: Colors.white,
        shadowColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Logged In',
                style: TextStyle(color: Colors.blue[900], fontSize: 16.0),
              ),
              SizedBox(height: 12),
              CircleAvatar(
                maxRadius: 35,
                backgroundImage: NetworkImage(user.photoURL),
              ),
              SizedBox(height: 12),
              Text(
                'Name: ' + user.displayName,
                style: TextStyle(color: Colors.blue[900], fontSize: 16.0),
              ),
              SizedBox(height: 8),
              Text(
                'Email: ' + user.email,
                style: TextStyle(color: Colors.blue[900], fontSize: 16.0),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final provider =
                          Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.logout();
                    },
                    child: Text('Logout'),
                  ),
                  SizedBox(width: 15.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => HomePage()
                        ));
                    },
                    child: Text('Movies'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
