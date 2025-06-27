import 'package:flutter/material.dart';

class Requestmoney extends StatelessWidget {
  const Requestmoney({super.key});

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
                          'Request Money',
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
                padding: EdgeInsets.all(35),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                            'Payer Name',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFA2A2A7)
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
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
                    SizedBox(height: 15),
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
                    SizedBox(height: 5),
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
                              Icons.mail_outline_outlined,
                              size: 24,
                              color: Color(0xFF7E848D),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFA2A2A7)
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Description',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF7E848D),
                        ),
                        prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.description_outlined,
                              size: 24,
                              color: Color(0xFF7E848D),
                            )
                        ),
                      ),
                    ),
                  ]
                )
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
            SizedBox(height: 70,),
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
                  'Request',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
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
