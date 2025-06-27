import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                      'Welcome back,',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Name',
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

        // Card Image
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Image(
            image: AssetImage('media/Card.png'),
            fit: BoxFit.contain,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildActionItem(Icons.arrow_upward_sharp, 'Send'),
              buildActionItem(Icons.arrow_downward_sharp, 'Receive'),
              buildActionItem(Icons.monetization_on_outlined, 'Loan'),
              buildActionItem(Icons.cloud_upload_outlined, 'Topup'),
            ],
          ),
        ),
        const SizedBox(height: 30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('Transaction', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (context) => const FractionallySizedBox(
                      heightFactor: 0.9,
                      child: TransactionHistoryModal(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
                  minimumSize: WidgetStatePropertyAll<Size>(Size(0, 0)),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF0066FF),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

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
            color: Color(0xFFD3D3D3),
          ),
          child: Icon(
            icon,
            size: 30,
            color: Color(0xFF1E1E2D),
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class TransactionHistoryModal extends StatelessWidget {
  const TransactionHistoryModal({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                  Icons.apple
              ),
              const SizedBox(width: 20),
              const Expanded(
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
      ],
    );
  }
}
