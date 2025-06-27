import 'package:flutter/material.dart';
import 'profile.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD3D3D3),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20,
                    color: Color(0xFF1E1E2D),
                  ),
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  // Gambar profile picture
                  backgroundImage: AssetImage('media/logo.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1E1E2D),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Senior Developer',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF7E848D),
                  ),
                )
              ]
            )
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFA2A2A7)
                        )
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF7E848D),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 24,
                        color: Color(0xFF7E848D),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                        'Email Address',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA2A2A7)
                        )
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF7E848D),
                    ),
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.email_outlined,
                          size: 24,
                          color: Color(0xFF7E848D),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                        'Phone Number',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA2A2A7)
                        )
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF7E848D),
                    ),
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.local_phone,
                          size: 24,
                          color: Color(0xFF7E848D),
                        )
                    ),
                  ),
                ),
              ]
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 52),
            width: 335,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0066FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
