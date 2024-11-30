import 'package:flutter/material.dart';
import 'package:realestate/responsive_grid_view.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text("RealEstate",style:TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue.shade900,
          shadowColor: Colors.white,
          child: DrawerHeader(child: CircleAvatar(backgroundImage: AssetImage("assets/images/home.2.1.webp"),)),
        ),
        body: ResponsiveGridView(),
      ),
    );
  }
}