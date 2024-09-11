import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        title: const Text('Welcome Back!'),
        elevation: 1,
      
      ),
      extendBody: true,
      drawer: const Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('a'),
            Text('b'),

          ],
        )
      ),
      body: const Center(
        child: Text('Hello!'),
      
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: 'b'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => Container(height: 200,));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}
