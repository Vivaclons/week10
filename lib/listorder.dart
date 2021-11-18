import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> item = List.generate(10, (index) => "${index.toString()}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('История'),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: ReorderableListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            final String productName = item[index];
            return Card(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              key: ValueKey(productName),
              color: Colors.white,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                title: Text(
                  "#8 мкр. 25\n 21x Лимонад 7F 0.5\n KZT 4200",
                  style: TextStyle(fontSize: 15, color: Colors.grey[900]),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue[800],
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/2', (route) => false);
                },
              ),
            );
          },
          onReorder: (oldIndex, newIndex) {
            setState(() {});
          }),
    );
  }
}
