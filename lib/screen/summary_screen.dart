import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SumaryScreen extends StatefulWidget {
  @override
  _SumaryScreenState createState() => _SumaryScreenState();
}

class _SumaryScreenState extends State<SumaryScreen> {
  Material MyItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.grey[200],
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style: TextStyle(
                          color: new Color(color),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point Five Capital'),
      ),
      body: Center(
          child: StaggeredGridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        children: <Widget>[
          MyItems(Icons.graphic_eq, 'Total Investment', 0xFFed622b),
          MyItems(Icons.bookmark_add, 'Add Fund', 0xFFff3266),
          MyItems(Icons.notifications, 'Notifications', 0xFF3399fe),
          MyItems(Icons.attach_money, 'Balance', 0xFF26cb3c),
          MyItems(Icons.verified_user_rounded, 'Portfolio', 0xFFed622b),
          MyItems(Icons.watch, 'Watch List', 0xFFed622b),
          MyItems(Icons.graphic_eq, 'Total Income', 0xFFed622b),
          MyItems(Icons.graphic_eq, 'Total Income', 0xFFed622b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(4, 250.0),
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(2, 300.0),
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(2, 150.0),
        ],
      )),
    );
  }
}
