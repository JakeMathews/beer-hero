import 'package:beer_hero/routes.dart';
import 'package:flutter/material.dart';

class GlobalDrawer extends StatelessWidget {
  final TextStyle tileStyle = new TextStyle(fontSize: 17.0);

  GlobalDrawer();

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        scrollDirection: Axis.vertical,
        physics: new ScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new ListTile(
              contentPadding: EdgeInsets.only(top: 30.0),
              title: new Text(
                'Beer Hero',
                style: new TextStyle(color: Theme.of(context).primaryTextTheme.title.color, fontSize: 30.0),
              ),
              leading: new Image(
                width: 100.0,
                image: new AssetImage('assets/beer-mug.png'),
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          createTile(context: context, icon: Icons.trending_up, text: 'Trending', pageRoute: TRENDING),
          new Divider(),
          createTile(
              context: context, icon: Icons.lightbulb_outline, text: 'Recommendations', pageRoute: RECOMMENDATIONS),
          new Divider(),
          createTile(context: context, icon: Icons.search, text: 'Discover', pageRoute: DISCOVER),
          new Divider(),
          createTile(context: context, icon: Icons.receipt, text: 'Your Beers', pageRoute: YOUR_BEERS),
          new Divider(),
          createTile(context: context, icon: Icons.help_outline, text: 'About', pageRoute: ABOUT),
          new Divider(),
        ],
      ),
    );
  }

  ListTile createTile({final BuildContext context, final IconData icon, final String text, final String pageRoute}) {
    return new ListTile(
      leading: new Icon(icon),
      title: Text(
        text,
        style: tileStyle,
      ),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(pageRoute);
      },
    );
  }
}
