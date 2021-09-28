import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  var namelist = [
    " Ahmed All Kahir",
    " Abu Hanif Numani",
    " Abu Shahan Shah",
    " Abu Shahan Shah ",
    " Abu Shahan Shah ",
    " Israt Tarin Nourin",
    " Israt Tarin Nourin",
    " Israt Tarin Nourin",
    "Israt Tarin Tasrin"
  ];
  var numlist = [
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863",
    "010712030863"
  ];
  var elist = [
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com",
    "Kahir123@gmail.com"
  ];

  @override
  Widget build(BuildContext context) {
    print(namelist.length);
    var wsize = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:
              const Text("Contact List", style: TextStyle(color: Colors.white)),
          //centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Container(
            //padding: EdgeInsets.all(1),
            margin: EdgeInsetsDirectional.all(5),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage("img/tShirt.jpg"),
                  fit: BoxFit.fill,
                )),
          ),
          actions: [Icon(Icons.more_vert)],
          bottom: PreferredSize(
              child: Container(
                color: Colors.cyanAccent,
                height: 4.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
        ),
        body: ListView.builder(
            itemCount: namelist.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                //child: Text(index.toString()),
                //child: Center( child: Text(namelist[index])),
                child: Card(
                  child: ListTile(
                    leading: Container(
                      //padding: EdgeInsets.all(10),
                      //margin: EdgeInsetsDirectional.all(1),
                      width: wsize / 6,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("img/tShirt.jpg"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    title: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              size: 25,
                              color: Colors.blue,
                            ),
                            Text(
                              namelist[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: 25,
                              color: Colors.blue,
                            ),
                            Text(numlist[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))
                          ],
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 25,
                          color: Colors.blue,
                        ),
                        Text(elist[index],
                            style:
                                TextStyle(color: Colors.black, fontSize: 17)),
                      ],
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      size: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              );
            }));
  }
}
