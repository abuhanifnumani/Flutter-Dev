import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AHN", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              print("work 1");
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {
                print("work 2");
              },
              icon: const Icon(Icons.more_vert, color: Colors.black))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 1000,
                height: 150,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    //padding: EdgeInsets.all(10),
                    child: Text(
                      "Sylhet Surma River ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                    //Icon(Icons.star_border,color: Colors.red,),
                    //width: ssize,

                    //color: Colors.grey,
                  ),
                  Container(
                    //padding: EdgeInsets.all(10),
                    child: Text(
                      "Backend of Shahan's House ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                    //Icon(Icons.star_border,color: Colors.red,),
                    //width: ssize,

                    //color: Colors.grey,
                  ),
                ],
              ),
              Row(
                children: [
                  //SizedBox()
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text("41"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
