
class Task {
  int id;
  String movieName;
  String directorName;
  String imageURL;
  int watchStatus;      

  Task ( { 
    this.id,
    this.movieName, 
    this.directorName, 
    this.imageURL, 
    this.watchStatus 
    } );

  Task.withId( { 
    this.id,
    this.movieName, 
    this.directorName, 
    this.imageURL, 
    this.watchStatus 
    } );

  Map <String, dynamic> toMap() {
    final map = Map <String, dynamic>();

    if (map['id'] != null)
    {
      map['id'] = id;
    }

    map['id'] = id;
    map['movieName'] = movieName;
    map['directorName'] = directorName;
    map['imageURL'] = imageURL;
    map['watchStatus'] = watchStatus;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
        id: map['id'],
        movieName: map['movieName'],
        directorName: map['directorName'],
        imageURL: map['imageURL'],
        watchStatus: map['watchStatus'],
    );
  } 
}