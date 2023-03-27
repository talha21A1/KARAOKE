import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 78),
                child: Container(
                  height: 600,
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        Text(
                          "Personal Information",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Text(
                            "We made (Sing Karaoke) with your privacy in mind, so we do not collect personally identifiable information about you. In other words, we do not collect information such as your name, address, phone number, email address or precise geographic location"),
                        SizedBox(height: 13),
                        Text(
                          "Usage analytics",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                            " We would like to make out product more useful for you, so we added Firebase Analytics to the (Sing Karaoke) app. It collects user behavior information in an anonymous form and transmits it to Google's Firebase servers. That means only usage data is collected, no personally identifiable information. Then we can use Firebase Analytics to create reports of how our App being used. For example, a percentage of users that use certain features, or most popular Android versions and screen sizes among our users. We use these reports to understand how to spend our development resources more efficiently and make our App better. Note that we might share these reports with third parties. To learn more check out Google's privacy policy."),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          " Advertising",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                            "  We use ads to keep (Sing Karaoke) free for you. All ads in our App are served by the third-party ad network. They may use and collect anonymous data about your interests to customize advertising in our app and in other sites and apps. To do that they use a unique user-resettable Advertising ID, provided by Google Play services. Interest and location data may be linked to your device, but is not linked to your identity. To learn more about third-party privacy policies and opt-out choice check out"),
                        SizedBox(height: 18),
                        Text(
                          "Changes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                            " We will post any privacy policy changes on this page and, if the changes are significant, we will provide a more prominent notice. If you have any questions or concerns about our privacy policies, please contact via email: me@saisab.com."),
                        Text(
                          "Copyright and License YouTube API ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                            "Sing Karaoke is a third-party software compliant with the YouTube API Terms of Service, and all videos are played via YouTube’s official Android API Player. YouTube protects the rights of copyright owners through its Content ID System, and if there are any videos that may infringe upon anyone’s copyrights, the videos can be reported to YouTube using Copyright Takedown Notices.All videos are provided by the public third-party media service YouTube. All trademarks and copyrights belong to their respective owners and are used here under the terms of Fair Use and the Digital Millennium Copyrights Act (DMCA). Since (Sing Karaoke) simply links to content on their service via their 3rd Party Developer API, (Sing Karaoke) does not have any direct control of their content. If there are any content that may infringe upon anyone's copyrights, the following link can be used to report the content: http://www.youtube.com/t/dmca_policy . Please feel free to contact us at: me@saisab.com for any further questions and information. Terms of service By using (Sing Karaoke), you are agreeing to be bound by the YouTube Terms of Service."),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50,
                  width: 200,
                  child: Center(
                    child: const Text(
                      "I understand ",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(19)),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
