import 'package:flutter/material.dart';
import 'package:flutter_application_2/Adds.dart';
import 'package:flutter_application_2/AirMode.dart';
import 'package:flutter_application_2/Balance.dart';
import 'package:flutter_application_2/Charges.dart';
import 'package:flutter_application_2/Devices.dart';
import 'package:flutter_application_2/Email.dart';
import 'package:flutter_application_2/Help.dart';
import 'package:flutter_application_2/HistorySearch.dart';
import 'package:flutter_application_2/Likes.dart';
import 'package:flutter_application_2/Messages.dart';
import 'package:flutter_application_2/Passwords.dart';
import 'package:flutter_application_2/Profile.dart';
import 'package:flutter_application_2/Reacts.dart';
import 'package:flutter_application_2/Sites.dart';
import 'package:flutter_application_2/Stiles.dart';

// ignore: camel_case_types
class New_Bar extends StatelessWidget {
  const New_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 600,
        width: 65,
        child: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: const Color.fromARGB(123, 121, 117, 9),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ));
                  },
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AirMode(),
                        ));
                  },
                  child: const Icon(
                    Icons.local_airport,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PassWords(),
                        ));
                  },
                  child: const Icon(
                    Icons.key,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Reacts(),
                        ));
                  },
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Stiles(),
                        ));
                  },
                  child: const Icon(
                    Icons.satellite_outlined,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Messages(),
                        ));
                  },
                  child: const Icon(
                    Icons.unsubscribe_outlined,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Likes(),
                        ));
                  },
                  child: const Icon(
                    Icons.recommend,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Charges(),
                        ));
                  },
                  child: const Icon(
                    Icons.offline_bolt_outlined,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Devices(),
                        ));
                  },
                  child: const Icon(
                    Icons.laptop,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistorySearch(),
                        ));
                  },
                  child: const Icon(
                    Icons.youtube_searched_for_rounded,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Adds(),
                        ));
                  },
                  child: const Icon(
                    Icons.group_add_sharp,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Sites(),
                        ));
                  },
                  child: const Icon(
                    Icons.airline_seat_recline_normal_rounded,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Balance(),
                        ));
                  },
                  child: const Icon(
                    Icons.calculate,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Email(),
                        ));
                  },
                  child: const Icon(
                    Icons.contact_mail_sharp,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(243, 239, 148, 0.565))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Help(),
                        ));
                  },
                  child: const Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
