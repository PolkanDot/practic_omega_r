import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*var menu = {
/*  'pasta'   : [10, 20, 40, 500],
  'sup'  : [20, 20, 15, 200],
  'meat'    : [40, 30, 20, 200],
  'iceCream' : [10, 30, 50, 450],
  'pancaces' : [15, 20, 40, 550],
  'salat' : [5, 30, 10, 100]*/
  'pasta'   : '10, 20, 40, 500',
  'sup'  : '20, 20, 15, 200',
  'meat'    : '40, 30, 20, 200',
  'iceCream' : '10, 30, 50, 450',
  'pancaces' : '15, 20, 40, 550',
  'salat' : '5, 30, 10, 100'
};

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text('Calory Calculator'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('pasta'),
        ),
      )
    );
  }
}*/

class MenuItem extends StatefulWidget {
  const MenuItem({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  _MenuItem createState() => _MenuItem();
}

class _MenuItem extends State<MenuItem> {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image(image: AssetImage(widget.image)),
      onPressed: () {
        Navigator.pop(context, widget.image.substring(7, 10));
      },
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage ({ Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Меню')),
      body:GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget> [
              MenuItem(image: 'assets/pasta.jpg'),
              MenuItem(image: 'assets/salat.jpg'),
              MenuItem(image: 'assets/soup.jpg'),
              MenuItem(image: 'assets/meat.jpg'),
              MenuItem(image: 'assets/pancackes.jpg'),
              MenuItem(image: 'assets/icecream.jpg'),
              RaisedButton(onPressed: () {
                Navigator.pop(context);
              },
                  child: Text('Назад')
              )
            ],
          ),
      );
  }
}