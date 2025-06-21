import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';



class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  int selectedMonth = 3;

  final Map<int, List<FlSpot>> monthData = {
    0: [FlSpot(0, 2), FlSpot(1, 3), FlSpot(2, 2.2), FlSpot(3, 3), FlSpot(4, 2.8), FlSpot(5, 3.5)], // Oct
    1: [FlSpot(0, 1.8), FlSpot(1, 2.2), FlSpot(2, 2.5), FlSpot(3, 2.3), FlSpot(4, 2.9), FlSpot(5, 3.2)], // Nov
    2: [FlSpot(0, 2.5), FlSpot(1, 3.1), FlSpot(2, 2.8), FlSpot(3, 3.4), FlSpot(4, 3.6), FlSpot(5, 3.9)], // Dec
    3: [FlSpot(0, 2), FlSpot(1, 3), FlSpot(2, 2.2), FlSpot(3, 4), FlSpot(4, 3.1), FlSpot(5, 5)],         // Jan
    4: [FlSpot(0, 2.1), FlSpot(1, 3.5), FlSpot(2, 3.0), FlSpot(3, 4.2), FlSpot(4, 4.5), FlSpot(5, 4.9)], // Feb
    5: [FlSpot(0, 1.5), FlSpot(1, 2.8), FlSpot(2, 3.2), FlSpot(3, 3.7), FlSpot(4, 4.1), FlSpot(5, 4.3)], // Mar
  };

  final List<String> months = ['Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar'];

  final Map<int, double> monthBalances = {
    0: 5230.00, // Oct
    1: 6025.50, // Nov
    2: 7342.10, // Dec
    3: 8545.00, // Jan
    4: 9300.75, // Feb
    5: 10120.00, // Mar
  };




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
                      'Statistics',
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
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: months.length,
                  itemBuilder: (context, index) {
                    bool isSelected = index == selectedMonth;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMonth = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0xFF0066FF) : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          months[index],
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Current Balance',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '\$${monthBalances[selectedMonth]!.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E1E2D),
                ),
              ),

              const SizedBox(height: 30),
              AspectRatio(
                aspectRatio: 1.6,
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: monthData[selectedMonth]!,
                        isCurved: true,
                        barWidth: 4,
                        isStrokeCapRound: true,
                        color: Color(0xFF0066FF),
                        dotData: FlDotData(
                          show: true,
                          checkToShowDot: (spot, _) => true,
                          getDotPainter: (spot, percent, barData, index) =>
                              FlDotCirclePainter(radius: 5, color: Colors.white, strokeColor: Color(0xFF0066FF), strokeWidth: 3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),



        const SizedBox(height: 30),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Transaction', style: TextStyle(fontSize: 18, color: Color(0xFF1E1E2D), fontWeight: FontWeight.w500)),
              Text('See All', style: TextStyle(fontSize: 14, color: Color(0xFF0066FF), fontWeight: FontWeight.w500))
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
