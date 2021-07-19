import 'package:cloud_firestore/cloud_firestore.dart';

class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final DocumentReference
      reference; // firebase firestore에 있는 데이터 컬럼을 참조할 수 있는 링크

  Movie.fromMap(Map<String, dynamic> map, {this.reference})
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Movie<$title:$keyword>";
}
