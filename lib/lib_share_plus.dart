import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SharePlusApp extends StatefulWidget {
  const SharePlusApp({super.key});

  @override
  State<SharePlusApp> createState() => _SharePlusAppState();
}

class _SharePlusAppState extends State<SharePlusApp> {
  String shareText = 'Hello, this text shared with shared plus Library!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Plus Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Press below button to share!'),
            Divider(
              color: Colors.transparent,
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() async {
                    final result = await Share.share(shareText,
                        subject: 'Share with Share + by AbdulSamad');

                    if (result.status == ShareResultStatus.success) {
                      print('Thank you for sharing my website!');
                    }
                  });
                },
                child: Text('Share with (Share Plus Library)'))
          ],
        ),
      ),
    );
  }
}
