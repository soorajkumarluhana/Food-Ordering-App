import 'package:flutter/material.dart';
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
            
            Container(
            height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 240,
                        width: 200,
                        decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(4, 6),
                            color: Colors.grey.shade100, blurRadius: 4)
                        ]),
                        child: Column(
                          children: [
                             Image.asset("images/burger.jpg", width: 200, height: 130,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Hello", style: TextStyle(fontSize: 16),),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.favorite_border, color: Colors.red, size: 18,),
                            )
                            ],
                          ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("4.7", style: TextStyle(color: Colors.grey, fontSize: 14),),
                            ),
                            SizedBox(width: 2,),
                              Icon(Icons.star, color: Colors.red, size: 16,),
                              Icon(Icons.star, color: Colors.red, size: 16,),
                              Icon(Icons.star, color: Colors.red, size: 16,),
                              Icon(Icons.star, color: Colors.red, size: 16,),
                              Icon(Icons.star, color: Colors.grey, size: 16,),
                             SizedBox(width: 31,),
                            Text("\$12.99", style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )
                          ],
                        ),
                      ),
                    );
                  }),
            )

          ],
        ),
      ),
    );
  }
}
