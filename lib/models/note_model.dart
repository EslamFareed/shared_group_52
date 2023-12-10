import 'dart:convert';

class NoteModel {
  String? title;
  String? body;
  String? dateTime;

  NoteModel({this.body, this.dateTime, this.title});

  String toMap() {
    var map = {
      "title": title,
      "body": body,
      "dateTime": dateTime,
    };

    return jsonEncode(map);
  }

  NoteModel.fromString(String value) {
    Map<String, dynamic> map = jsonDecode(value);

    title = map["title"];
    body = map["body"];
    dateTime = map["dateTime"];
  }
}
