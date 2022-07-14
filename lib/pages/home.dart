import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List menuList = [];
  int number = 10;
  @override
  void initState () {
    super.initState();
    menuList.addAll(['Салат: Б: 5, Ж: 30, У:10, Кал: 100',
    'Стэйк: Б: 40, Ж: 30, У: 20, Кал: 200',
    'Блинчики: Б: 15, Ж: 20, У: 40, Кал: 550']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text('Calory Calculator'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: menuList.length  ,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(menuList[index]),
                child: Card(
                  child: ListTile(title: Text(menuList[index])),
                ),
                onDismissed: (direction) {
                  setState(() {
                    menuList.removeAt(index);
                  });
                },
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        }
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Card(
          child: ListTile(title: Text('Total: 0')),
        ),
        elevation: 0,
      ),
      );
  }
}