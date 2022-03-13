import 'package:flutter/material.dart';
import 'package:groww_app/pages/home.dart';
import 'package:groww_app/pages/loginScreen.dart';
import 'package:groww_app/pages/mutual_funds.dart';
import 'package:groww_app/pages/orders.dart';
import 'package:groww_app/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: "/login",
    routes: {
      '/home': (context) => Mainpage(),
      '/login': (context) => LoginScreen(),
      '/register': (context) => RegistrationScreen(),
    },
  ));
}

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List data = [];
  int currentIndex = 0;
  final screens = [
    Home(),
    mutualfunds(),
    Orders(),
  ];
  String user_name = "Himanshu Rathod";
  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context).settings.arguments;
    // print(data);
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)  => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.indigo[400],
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: "Stocks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline_outlined),
            label: "Mutual Funds",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on_rounded),
            label: "More",
          ),

        ],
      ),
    );
  }
}