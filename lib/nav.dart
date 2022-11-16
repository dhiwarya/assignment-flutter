import 'form.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'data.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('counter_7'),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Add a new budget'),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()));
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Budget Data'),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MyData()));
            },
          ),
        ],
      ),
    );
  }
}