import 'package:flutter/material.dart';

class HomeH extends StatefulWidget {
  @override
  _HomeHState createState() => _HomeHState();
}

class _HomeHState extends State<HomeH> {
  int _currentindex = 1;

  var bottomNavigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: const Icon(Icons.queue),
      title: Text('Applications'),
      ),
      BottomNavigationBarItem(
      icon: const Icon(Icons.work),
      title: Text('Jobs'),
      ),
      BottomNavigationBarItem(
      icon: const Icon(Icons.account_circle),
      title: Text('Profile'),
      )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text(
          'Atmanirbhar',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: ListView(
        children: [
          Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: Column(
            children: [
              ListTile(
                title: Text('Houshold Help'),
                subtitle: Text('Jhadu, Pochha, Bartan, Kapde dhone'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text('10,000 per month'),
                Text('XXXX, Jaipur, Rajasthan'),
                ]),
              ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.call),
                  label: const Text('Call'),
                  onPressed: () {/* ... */},
                ),
                FlatButton.icon(
                  icon: Icon(Icons.send),
                  label: const Text('Apply'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            ],
          ),
          )),
          Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: Column(
            children: [
              ListTile(
                title: Text('Factory Worker'),
                subtitle: Text('Labour work'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text('10,000 per month'),
                Text('XXXX, Jaipur, Rajasthan'),
                ]),
              ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.call),
                  label: const Text('Call'),
                  onPressed: () {/* ... */},
                ),
                FlatButton.icon(
                  icon: Icon(Icons.send),
                  label: const Text('Apply'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            ],
          ),
          )),
          Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: Column(
            children: [
              ListTile(
                title: Text('Construction Worker'),
                subtitle: Text('Labour Work'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text('10,000 per month'),
                Text('XXXX, Jaipur, Rajasthan'),
                ]),
              ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.call),
                  label: const Text('Call'),
                  onPressed: () {/* ... */},
                ),
                FlatButton.icon(
                  icon: Icon(Icons.send),
                  label: const Text('Apply'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
            ],
          ),
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _currentindex,
        backgroundColor: Colors.teal[300],
        selectedFontSize: 20,
        unselectedFontSize: 18,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.38),
        items: bottomNavigationBarItems,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
