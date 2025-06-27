import 'package:flutter/material.dart';
import 'profile.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        'Settings',
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
                    Icons.search,
                    size: 20,
                    color: Color(0xFF1E1E2D),
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
                Text(
                  'General',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFA2A2A7),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Language',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'English',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFA2A2A7),
                        fontWeight: FontWeight.normal,
                      )
                    ),
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
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Profile()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Color(0xFF7E848D),
                      ),
                    )
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
                    Text(
                      'Contact Us',
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
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Security',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFA2A2A7),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Change Password',
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
                    Text(
                      'Privacy Policy',
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
      ],
    );
  }
}
