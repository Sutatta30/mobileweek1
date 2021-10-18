import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileweek1/config/constant.dart';
import 'package:mobileweek1/model/tct.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

var data;

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    print("Hello");
    callAPI();
  }

  Future<void> callAPI() async {
    var url = Uri.parse("https://www.boredapi.com/api/activity");
    var response = await http.get(url);

    setState(() {
      data = tctFromJson(response.body);
    });
    //print(response.statusCode);
    //print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: scolor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Video',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.video_call,
                color: Colors.yellow,
                size: 36,
              ),
            ),
            ListTile(
              title: Text(
                'Image',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.image,
                color: Colors.purple,
                size: 36,
              ),
              onTap: () {
                print('Menu Image');
                Navigator.pushNamed(context, 'Image');
              },
            ),
            ListTile(
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.gps_fixed,
                color: Colors.lightBlueAccent,
                size: 36,
              ),
              onTap: () {
                print('Menu Location');
                Navigator.pushNamed(context, 'Location');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.api),
            SizedBox(width: 10),
            Text('Dashboard'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Text(
              data?.activity ?? "loading...",
              style: TextStyle(
                color: Colors.pink.shade300,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              data?.type ?? "loading...",
              style: TextStyle(
                color: Colors.pink.shade200,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              '${data?.price ?? "loading..."}',
              style: TextStyle(
                color: Colors.purple.shade300,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              '${data?.participants ?? "loading..."}',
              style: TextStyle(
                color: Colors.purple.shade200,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
