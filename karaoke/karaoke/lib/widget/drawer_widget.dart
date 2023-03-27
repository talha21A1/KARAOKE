import 'package:flutter/material.dart';
import 'package:karaoke/help.dart';
import 'package:karaoke/widget/contact_us_screen.dart';
import 'package:karaoke/widget/copy_right.dart';
import 'package:karaoke/widget/privacy_policy.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utilities/color.dart';

Widget customDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.blue,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.contact_phone),
          title: const Text(
            'Contact  us',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            _launchEmail();
          },
        ),
        Divider(
          color: Col.color,
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.share),
          title: const Text(
            'Share this App',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            _shareApp();
          },
        ),
        Divider(
          color: Col.color,
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.rate_review),
          title: const Text(
            'Rate this App',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            _launchStore();
          },
        ),
        Divider(
          color: Col.color,
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.app_registration),
          title: const Text(
            'More Applications',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            _moreapplication();
          },
        ),
        Divider(
          color: Col.color,
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.copyright_rounded),
          title: const Text(
            'Copyright Policy',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Copyright()));
          },
        ),
        Divider(
          color: Col.color,
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.share),
          title: const Text(
            'Privacy Policy',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => PrivacyPolicy()));
          },
        ),
        Divider(
          color: Col.color,
        ),
        ListTile(
          iconColor: Col.color,
          leading: const Icon(Icons.share),
          title: const Text(
            'Help',
            style: TextStyle(
              color: Col.color,
            ),
          ),
          onTap: () {
            print("fgfd");
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Help()));
          },
        ),
      ],
    ),
  );
}

final String recipientEmail = 'Simonn691@gmail.com';
final String emailSubject = 'Hello from Karaoke';
final String emailBody = '';

_launchEmail() async {
  final String mailToUrl =
      'mailto:$recipientEmail?subject=$emailSubject&body=$emailBody';
  final String gmailUrl =
      'googlegmail:///co?to=$recipientEmail&subject=$emailSubject';

  try {
    // Try to launch Gmail app
    if (await canLaunch(gmailUrl)) {
      await launch(gmailUrl);
    } else {
      // Fallback to user's default email app
      await launch(mailToUrl);
    }
  } catch (e) {
    // Error launching email app
    print('Error launching email app: $e');
  }
}

_shareApp() async {
  Share.share('Check out this awesome app!');
}



_launchStore() async {
  final String url =
      'https://play.google.com/store/apps/details?id=com.famousbluemedia.yokee';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_moreapplication() async {
  final String url =
      'https://play.google.com/store/apps/details?id=com.saisab.banglakaraoke';

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
