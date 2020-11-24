import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tôi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text('NAME')),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Slo Adams',
                style: TextStyle(fontSize: 20.8, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            Divider(),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              leading: Icon(Icons.report),
              title: Text('Report'),
            ),
            Divider(),
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
