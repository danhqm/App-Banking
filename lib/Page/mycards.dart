import 'package:flutter/material.dart';

class Mycards extends StatelessWidget {
  const Mycards({super.key});

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
                      'My Cards',
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
                  Icons.add,
                  size: 20,
                  color: Color(0xFF1E1E2D),
                ),
              ),
            ],
          ),
        ),

        // Card Image
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Image(
            image: AssetImage('media/Card.png'),
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 1),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                  Icons.apple
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Apple Store',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Entertainment',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA2A2A7),
                      ),
                    ),
                  ],
                ),
              ),
              Text('- 88.00', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.trolley,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Grocery',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Foods',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA2A2A7),
                      ),
                    ),
                  ],
                ),
              ),
              Text('- 65.50', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.trolley,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Fund Transfer',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Transfer',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA2A2A7),
                      ),
                    ),
                  ],
                ),
              ),
              Text('+ 100.00', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.nightlife_outlined,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Concert',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1E1E2D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Entertainment',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA2A2A7),
                      ),
                    ),
                  ],
                ),
              ),
              Text('- 150.00', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
            ],
          ),
        ),

        SizedBox(height: 15),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Monthly spending limit', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildActionItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF5F5F5),
          ),
          child: Icon(
            icon,
            size: 30,
            color: const Color(0xFF1E1E2D),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
