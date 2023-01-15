import 'package:flutter/material.dart';
import 'package:todo/presentation/text_const.dart';

import 'presentation/add_todo_dialog.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final tabs = [Container(), Container()];
    var selectedIndex = 0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Tx.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white.withOpacity(0.7),
          selectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: ((value) => setState(
                () {
                  selectedIndex = value;
                },
              )),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined),
              label: 'Todos',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.done,
                size: 28,
              ),
              label: 'Completed',
            )
          ],
        ),
        body: tabs[selectedIndex],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          onPressed: (() => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (((context) {
                return const AddTodoDialogWidget();
              })))),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
