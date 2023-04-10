import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(app());
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Whatsapp"),
              ),
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.account_box_rounded,
                            color: Colors.white,
                            size: 35,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Chat",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 254, 254),
                                fontSize: 20),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text("Group",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 254, 254, 254),
                                  fontSize: 20))),
                      TextButton(
                          onPressed: () {},
                          child: Text("Status",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 254, 254, 254),
                                  fontSize: 20))),
                                
                      TextButton(
                          onPressed: () {
                           // Navigator.push(context, MaterialPageRoute(builder: (context) => call(),));
                          },
                          child: Text("Call",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 254, 254, 254),
                                  fontSize: 20))),
                    ],
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.wifi)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 30, (context, index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ashish Shinde"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("tejas : hii"),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("lib/SIR.jpg"),
                  ), //Image.asset("lib/s.png")//,
                  trailing: Text("10:10"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
