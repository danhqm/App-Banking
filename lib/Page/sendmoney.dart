import 'package:flutter/material.dart';

class Sendmoney extends StatelessWidget {
  const Sendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
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
                        'Send Money',
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
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.9, // makes next card peek in
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 35, right: 10),
                  child: Image.asset('media/Card.png'),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(35),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFE5E5E5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0,2),
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Send to',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1E1E2D),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _SendToItem(icon: Icons.add, label: 'Add', isAddButton: true),
                        _SendToItem(image: 'media/logo.png', label: 'Abu'),
                        _SendToItem(image: 'media/logo.png', label: 'Ali'),
                        _SendToItem(image: 'media/logo.png', label: 'Siti'),
                        _SendToItem(image: 'media/logo.png', label: 'Mariam'),
                        _SendToItem(image: 'media/logo.png', label: 'Adam'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFE5E5E5), width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  ),
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                          'Enter Your Amount',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF7E848D),
                          )
                      ),
                      Spacer(flex: 1),
                      const Text(
                          'Change Currency?',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFFFF3F60),
                          )
                      )
                    ]
                  ),
                  SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'USD',
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF9BB2D4),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.numberWithOptions(decimal: true),
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF1E1E2D),
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            hintText: '0.00',
                            hintStyle: TextStyle(
                              fontSize: 28,
                              color: Color(0xFF1E1E2D),
                              fontWeight: FontWeight.w500,
                            )
                          ),
                        ),
                      )
                    ],
                  )
                ]
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 52),
            width: 335,
            height: 56,
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0066FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Send',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _SendToItem extends StatelessWidget {
  final IconData? icon;
  final String? image;
  final String label;
  final bool isAddButton;

  const _SendToItem({
    super.key,
    this.icon,
    this.image,
    required this.label,
    this.isAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isAddButton ? Color(0xFF0066FF) : Colors.transparent,
              ),
              color: isAddButton ? Colors.white : Colors.grey.shade200,
              image: image != null
                  ? DecorationImage(image: AssetImage(image!), fit: BoxFit.cover)
                  : null,
            ),
            child: isAddButton
                ? Icon(icon, size: 24, color: Color(0xFF0066FF))
                : null,
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 13, color: Color(0xFF1E1E2D)),
          ),
        ],
      ),
    );
  }
}