import 'package:flutter/material.dart';
import 'package:foodorderingapp/Widgets/Products.dart';
import 'package:foodorderingapp/Widgets/categories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

@override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "What Would you like to eat?",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications_none)),
                    Positioned(
                      top: 7,
                      right: 9,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Find Food and  restaurent"),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            categories(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Featured",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.grey)),
            ),
           Products(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Popular", style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              color: Colors.grey
            ), ),
          ),

        Stack( 
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/burger2.jpg")),
            ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.favorite, color: Colors.red,)
              ],
            ),
          )  
          ],
        )
                      
          ],
        ),
       bottomNavigationBar: Container(
         color: Colors.white,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.home, size: 40,),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.local_activity,size: 40,),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.shopping_bag, size: 40,),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.person, size: 40,),
             )
           ],
         ),
       ),   
         
      ),
    );
  }
}
