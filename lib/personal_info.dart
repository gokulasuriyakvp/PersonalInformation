import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';



class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Personal Information'),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) =>
            [
              PopupMenuItem(
                value: 1,
                child: Text("Sahre mobile Number"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Share Emaill Id"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Share Address"),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("Share All"),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                _ShareMobileNumber();
              }
              if (value == 2) {
                _ShareEmailId();
              }
              if (value == 3) {
                _ShareAddress();
              }
              if (value == 4) {
                _ShareAll();
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Gokula Suriya Selvaraj',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red,
                  ),
                  title: Text(
                    '+91 76049 01736',
                    style: TextStyle(
                      fontWeight:
                      FontWeight.bold,
                      letterSpacing: 1.0,
                      fontFamily: 'RobotoCondensed',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    'gokulasuriya.kvp@gamil.com',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoCondensed',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.red,
                  ),
                  title: Text(
                    'No. 31/32 Siruvallur Road,Kavindapadi,Erode-638 455.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _ShareMobileNumber() {
    Share.share('+91 76049 01736');
    print('+91 76049 01736');
  }

  _ShareEmailId() {
    Share.share('gokulasuriya.kvp@gamil.com');
    print('gokulasuriya.kvp@gamil.com');
  }

  _ShareAddress() {
    Share.share('No. 31/32 Siruvallur Road,Kavindapadi,Erode-638 455.');
    print('No. 31/32 Siruvallur Road,Kavindapadi,Erode-638 455.');
  }

  _ShareAll() {
    Share.share(
        '+91 76049 01736 \ngokulasuriya.kvp@gamil.com \nNo. 31/32 Siruvallur Road,Kavindapadi,Erode-638 455.');
    print(
        '+91 76049 01736 \ngokulasuriya.kvp@gamil.com \nNo. 31/32 Siruvallur Road,Kavindapadi,Erode-638 455.');
  }
}

