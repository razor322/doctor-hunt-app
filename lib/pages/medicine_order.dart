import 'package:flutter/material.dart';

class MedicineOrder extends StatefulWidget {
  const MedicineOrder({super.key});

  @override
  State<MedicineOrder> createState() => _MedicineOrderState();
}

class _MedicineOrderState extends State<MedicineOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'Medical Record',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 40), // Spacer
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/medicineorder.png',
                  width: 214,
                  height: 214,
                ),
                SizedBox(height: 20),
                Text(
                  'No orders placed yet',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Place your first order now.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Tombol
                  },
                  child: Container(
                    width: 270,
                    height: 54,
                    child: Center(
                      child: Text(
                        'Order Medicines',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0EBE7F), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}