import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class BadgesApp extends StatefulWidget {
  const BadgesApp({super.key});

  @override
  State<BadgesApp> createState() => _BadgesAppState();
}

class _BadgesAppState extends State<BadgesApp> {
  int facebookBadgeCount = 2;
  int telegramBadgeCount = 13;
  int notificationBadgeCount = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badges Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                badges.Badge(
                  onTap: () {
                    setState(() {
                      facebookBadgeCount--;
                    });
                  },
                  badgeContent: Text('$facebookBadgeCount'),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        facebookBadgeCount++;
                      });
                    },
                    icon: Icon(
                      Icons.facebook,
                      size: 50,
                    ),
                  ),
                ),
                badges.Badge(
                  onTap: () {
                    setState(() {
                      facebookBadgeCount--;
                    });
                  },
                  badgeContent: Text('$telegramBadgeCount'),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        telegramBadgeCount++;
                      });
                    },
                    icon: Icon(
                      Icons.telegram,
                      size: 50,
                    ),
                  ),
                ),
                badges.Badge(
                  onTap: () {
                    setState(() {
                      facebookBadgeCount--;
                    });
                  },
                  badgeContent: Text('$notificationBadgeCount'),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        notificationBadgeCount++;
                      });
                    },
                    icon: Icon(
                      Icons.notifications,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Press a Button to increase it\'s badge count!')
        ],
      ),
    );
  }
}
