import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[300],
            // textStyle: TextStyle(color: Colors.black),
            foregroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon dot = Icon(Icons.circle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Ui practice'),
      // ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 10),
              FaIcon(FontAwesomeIcons.youtube, color: Colors.red),
              Text(
                'YouTube',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0),
              ),
              SizedBox(width: 108),
              FaIcon(FontAwesomeIcons.houseSignal),
              SizedBox(width: 18),
              FaIcon(FontAwesomeIcons.bell),
              SizedBox(width: 18),
              FaIcon(FontAwesomeIcons.search),
              SizedBox(width: 18),
              FaIcon(FontAwesomeIcons.userCircle),
            ],
          ),

          SizedBox(height: 10),

          Row(
            children: [
              SizedBox(width: 10),

              FaIcon(FontAwesomeIcons.compass),
              // FaIcon(FontAwesomeIcons.line),
              SizedBox(width: 38),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: ElevatedButton(
                  child: Text('All'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.grey,
                      ),
                ),
              ),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: ElevatedButton(
                  child: Text('New to you'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.grey,
                      ),
                ),
              ),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: ElevatedButton(
                  child: Text('Mixes'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.grey,
                      ),
                ),
              ),
              SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: ElevatedButton(
                  child: Text('Songs'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.grey,
                      ),
                ),
              ),
            ],
          ),

          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 190,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 0.2))),
                    ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: FaIcon(FontAwesomeIcons.music,
                                color: Colors.black)),
                        title: Text('Elevated | Shubh | Official Audio'),
                        subtitle: Text('SHUBH - 200K views - 7 hours ago'))
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 190,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.2)),
                    ),
                    ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: FaIcon(FontAwesomeIcons.personHiking)),
                        title: Text(
                            'FARAAR | GURINDER GILL | Official Music Video'),
                        subtitle:
                            Text('RUNUP RECORDS - 50M views - 2 days ago'))
                  ],
                ),
              ],
            ),
          ),

          // Row(
          //   children: [
          //     Text('test'),
          //     Text('${dot.}')
          //   ],
          // ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.squareYoutube,
              ),
              label: 'Shorts'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.circlePlus,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.youtube,
              ),
              label: 'Subscription'),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.book,
            ),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
