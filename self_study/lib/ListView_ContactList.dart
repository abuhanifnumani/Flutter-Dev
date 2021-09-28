import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  var namelist = ["Kahir", "Shahan", "Nourin", "Tasrin"];
  var numlist = [
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863"
  ];
  var elist = [
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: namelist.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 300,
                color: Colors.amber,
                margin: EdgeInsets.all(50),
                //child: Text(index.toString()),
                //child: Center( child: Text(namelist[index])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(namelist[index]),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(numlist[index])
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(elist[index]),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
