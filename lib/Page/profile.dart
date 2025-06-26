import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                const SizedBox(width: 20),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD3D3D3),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.person_2_outlined,
                    size: 20,
                    color: Color(0xFF1E1E2D),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 24,
                  // Gambar profile picture
                  backgroundImage: AssetImage('media/logo.png'),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1E1E2D),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF7E848D),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    const Icon(
                      Icons.person_outline_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.payments_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Payment Preferences',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.credit_card_sharp,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Bank and Cards',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.doorbell_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.message_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Message Center',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xFF7E848D),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
