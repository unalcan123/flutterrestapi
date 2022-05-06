import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url = Uri.parse('https://www.mp3quran.net/api/_english.json');
  List? data;
  Future callHoca() async {
    try {
      var res = await http.get(url);
      if (res.statusCode == 200) {
        var resBody = json.decode(res.body);
        if (mounted) {
          setState(() {
            data = resBody['reciters'];
          });
        } else {
          print(res.statusCode);
        }
      }
    } catch (e) {
      print(e.toString());
    }

    return 'Success';
  }

  @override
  void initState() {
    super.initState();
    callHoca();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hocalar'),
        ),
        body: ListView.builder(
            itemCount: data == null ? 0 : data?.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${data![index]['letter']}'),
                ),
                title: Text('${data![index]['name']}'),
                subtitle: Text('Sub Title'),
              );
            }),
      ),
    );
  }
}
