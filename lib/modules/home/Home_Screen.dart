import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          "First App",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.print,
            ),
            onPressed: () {
              print("object");
            },
          ),
          IconButton(
            icon: Text(
              "SUM",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              print(5 + 5);
            },
          ),
        ],
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              // استعملنا ال بوردير من اجل عملية قص الحواف
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(10.0),
                  topEnd: Radius.circular(10.0),
                ),
              ),
              // يجب وضع ال clip لكي يتم القص
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Image(
                    image: NetworkImage(
                      "https://cdn.arstechnica.net/wp-content/uploads/2016/02/5718897981_10faa45ac3_b-640x624.jpg",
                    ),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.blue.withOpacity(0.6),
                    child: Text(
                      "Eyes",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
