import 'package:flutter/material.dart';


class SideDrawerClass extends StatefulWidget {
  const SideDrawerClass({super.key,required this.ctx});
  final BuildContext ctx;

  @override
  State<SideDrawerClass> createState() => _SideDrawerClassState();
}

class _SideDrawerClassState extends State<SideDrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text(
                "Nayeem Khan",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("nayeemkhan990@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 165, 255, 137),
                child: Text(
                  "N",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ), //Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ), //DrawerHeader
          ListTile(
            leading: const Icon(Icons.car_rental),
            title: const Text(' My tools '),
            onTap: () {
              Navigator.pop(context);
            },
          ),


          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('My products '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
