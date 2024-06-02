import 'package:flutter/material.dart';

class Tools {
  final String imageUrl;
  final String price;
  final String period;

  Tools({required this.imageUrl, required this.price, required this.period});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Tools> toolsList = [
    Tools(imageUrl: 'https://truckguru.co.in/blog/wp-content/uploads/2019/04/indian-truck.png', price: '20', period: 'day'),
    Tools(imageUrl: 'https://claydondrill.com/wp-content/uploads/2020/09/guide-to-seed-drills.jpg', price: '100', period: 'week'),
    Tools(imageUrl: 'https://salfordgroup.com/wp-content/uploads/2022/06/2pc-S-Tine-Cultivator-02-640x403.jpg', price: '300', period: 'month'),

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //leading: const Icon(Icons.menu),
        title: const Text("Home page"),
      ),
      drawer: _drawer(),
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toolsList.length,
        itemBuilder: (context, index) {
          final tool = toolsList[index];
          return Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: double.infinity,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 240, // 80% of 300
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                      image: DecorationImage(
                        image: NetworkImage(tool.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\$${tool.price} / ${tool.period}",
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),

    );
  }

  Widget _drawer (){
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
