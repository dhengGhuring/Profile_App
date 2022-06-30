import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Image(
                  height: MediaQuery.of(context).size.height / 2.6,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1417052800325-788e0eaf22c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                ),
                const Positioned(
                  bottom: -70.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg?w=2000'),
                  ),
                ),
              ]),
          const SizedBox(
            height: 75,
          ),
          const ListTile(
            title: Center(
                child: Text(
              'Ridho Ananta',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
            subtitle: Center(
                child: Text(
              'Front End Developer',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            )),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.email,
              color: Colors.black,
            ),
            label: const Text(
              'Hire Me',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text('About Me',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            subtitle: Text(
              'Hello you can call me Ridho, from Indonesia.\nI"m a Front End Engineer for Company in Indonesia.\nOver 1 years of Experienced Software Development.\nI have serious passion for UI, feel free to\ncheck my portofolio on wyvrendragon.com',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
