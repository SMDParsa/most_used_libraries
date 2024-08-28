import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:most_used_libraries/lib_audio_players.dart';
import 'package:most_used_libraries/lib_badges.dart';
import 'package:most_used_libraries/lib_image_picker.dart';
import 'package:most_used_libraries/lib_native_splash.dart';
import 'package:most_used_libraries/lib_pinput.dart';
import 'package:most_used_libraries/lib_share_plus.dart';
import 'package:most_used_libraries/lib_shimmer.dart';
import 'package:most_used_libraries/lib_web_view.dart';

import 'lib_english_words.dart';
import 'lib_package_info_plus.dart';

void main() {
  /*WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);*/
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: MostUsedLibrariesApp(),
  ));
}

class MostUsedLibrariesApp extends StatefulWidget {
  MostUsedLibrariesApp({super.key});

  @override
  State<MostUsedLibrariesApp> createState() => _MostUsedLibrariesAppState();
}

class _MostUsedLibrariesAppState extends State<MostUsedLibrariesApp> {
  List<LibraryObject> libraryList = [
    LibraryObject('package_info_plus',
        'This Flutter plugin provides an API for querying information about an application package.'),
    LibraryObject('image_picker',
        'Flutter plugin for selecting images from the Android and iOS image library, and taking new pictures with the camera.'),
    LibraryObject('flutter_native_splash',
        'Customize Flutter\'s default white native splash screen with background color and splash image. Supports dark mode, full screen, and more.'),
    LibraryObject('share_plus',
        'Flutter plugin for sharing content via the platform share UI, using the ACTION_SEND intent on Android and UIActivityViewController on iOS.'),
    LibraryObject('webview_flutter',
        'A Flutter plugin that provides a WebView widget backed by the system webview.'),
    LibraryObject('shimmer',
        'A package provides an easy way to add shimmer effect in Flutter project'),
    LibraryObject('audioplayers',
        'A Flutter plugin to play multiple simultaneously audio files, works for Android, iOS, Linux, macOS, Windows, and web.'),
    LibraryObject('badges',
        'A package for creating badges. Badges can be used for an additional marker for any widget, e.g. show a number of items in a shopping cart.'),
    LibraryObject('pinput',
        'Pin code input (OTP) text field, iOS SMS autofill, Android SMS autofill One Time Code, Password, Passcode, Captcha, Security, Coupon, Wowcher, 2FA, Two step verification'),
    LibraryObject('english_words',
        'Utilities for working with English words. Counts syllables, generates well-sounding word combinations, and provides access to the top 5000 English words by usage.')
  ];

  @override
  void initState() {
    super.initState();
    // initialization();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Most used Libraries'),
      ),
      body: ListView.builder(
        itemCount: libraryList.length,
        itemBuilder: (context, index) {
          return RawMaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  switch (index) {
                    case 0:
                      return PackageInfoPlus();
                    case 1:
                      return ImagePickerApp();
                    case 2:
                      return NativeSplashApp();
                    case 3:
                      return SharePlusApp();
                    case 4:
                      return WebViewApp();
                    case 5:
                      return ShimmberApp();
                    case 6:
                      return AudioPlayersApp();
                    case 7:
                      return BadgesApp();
                    case 8:
                      return PinPutApp();
                    case 9:
                      return EnglishWords(
                        title: libraryList[index]._title,
                      );
                  }
                  return Placeholder();
                },
              ));
            },
            child: ListTile(
              title: Text(
                libraryList[index]._title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                libraryList[index]._subtitle,
                style: const TextStyle(fontSize: 10),
              ),
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          );
        },
      ),
    );
  }
}

class LibraryObject {
  final String _title;
  final String _subtitle;

  LibraryObject(this._title, this._subtitle);
}
