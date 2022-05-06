import 'dart:convert';

import 'package:flutterrestapi/reciters.dart';

import 'package:http/http.dart' as http;

class UserService {
  final String urlRecier = 'https://www.mp3quran.net/api/_english.json';
  // Future<UsersModel?> fetchUsers() async {
  //   var res = await http.get(Uri.parse(url));
  //   if (res.statusCode == 200) {
  //     var jsonBody = UsersModel.fromJson(jsonDecode(res.body));
  //     return jsonBody;
  //   } else {
  //     print('basarisiz ${res.statusCode} ');
  //   }
  // }

//https://www.mp3quran.net/api/_english.json

}
/*
* import 'package:http/http.dart' as http;
dependencies:
  http: ^0.13.4
  * flutter pub add http
var url = Uri.parse('https://example.com/whatsit/create');
var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');

print(await http.read(Uri.parse('https://example.com/foobar.txt')));
* */
