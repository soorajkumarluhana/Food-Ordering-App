import 'package:flutter/material.dart';

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
            Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, index) {
                      return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.shade50,
                        offset: Offset(4, 6),
                        blurRadius: 20
                      )
                    ] 
                  ),
                 child: Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: Image.asset("images/burger.jpg", width: 50,),
                 ), 
                    ),
                   SizedBox(height: 5,),
                  Text("Salad", style: TextStyle(fontSize: 14, color: Colors.black),) 
                  ],
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
