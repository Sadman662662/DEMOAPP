import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Image(
                image: NetworkImage(
                    'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
              ),
            ),
            Card(
              child: Image(
                image: NetworkImage(
                    'https://static.toiimg.com/photo/msid-67586673/67586673.jpg?3918697'),
              ),
            ),
            Card(
              child: Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mitzibotz_the_cat_%282%29.jpg/1200px-Mitzibotz_the_cat_%282%29.jpg'),
              ),
            ),
            Card(
              child: Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Close_up_of_a_black_domestic_cat.jpg/1200px-Close_up_of_a_black_domestic_cat.jpg'),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                'Side Bar',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              child: Card(
                child: ListTile(
                  title: Text(
                    'Item 1',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  tileColor: Colors.red[200],
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Container(
              child: Card(
                child: ListTile(
                  title: Text(
                    'Item 2',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  tileColor: Colors.red[200],
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
